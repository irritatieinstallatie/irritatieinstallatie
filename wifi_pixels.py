import subprocess, re, time, sys, random
import numpy as np
import pygame as pg

# ---------- config ----------
IFACE = "wlan0"
WIDTH, HEIGHT = 640, 480
#WIDTH, HEIGHT = 800, 600
PIXEL_SIZE = 1          # bigger = blockier pixels
FPS = 60               # visual update rate
POLL_HZ = 60            # how often to re-read RSSI
# ---------------------------

def read_rssi_dbm():
    # Returns RSSI in dBm (negative int) or None if unknown
    try:
        out = subprocess.check_output(["/sbin/iw", "dev", IFACE, "link"], text=True)
    except Exception:
        return None
    m = re.search(r"signal:\s*(-?\d+)\s*dBm", out)
    return int(m.group(1)) if m else None

def rssi_to_quality(rssi_dbm):
    # Map typical Wi-Fi range (-90…-50 dBm) to 0…1
    if rssi_dbm is None:
        return 0.0
    q = (rssi_dbm + 90) / 40.0
    return max(0.0, min(1.0, q))

def palette(noise, q):
    """
    Map noise [0..1] -> RGB.
    q controls contrast & hue shift: strong signal = brighter, cooler;
    weak signal = darker, warmer.
    """
    # Contrast scales with q
    noise = (noise - 0.5) * (0.5 + 1.5*q) + 0.5
    noise = np.clip(noise, 0, 1)

    # Simple two-color gradient between warm and cool
    warm = np.array([1.0, 0.5, 0.2])
    cool = np.array([0.2, 0.6, 1.0])
    mix = q  # more cool as signal improves
    base = (1-mix)*warm + mix*cool

    # Per-channel multiply
    img = (noise[..., None] * base[None, None, :])
    return np.uint8(np.clip(img * 255, 0, 255))

def main():
    pg.init()
#    screen = pg.display.set_mode((WIDTH, HEIGHT))
    screen = pg.display.set_mode((50,50), pg.FULLSCREEN)
    clock = pg.time.Clock()

    # Precompute pixel grid size
    gw, gh = WIDTH // PIXEL_SIZE, HEIGHT // PIXEL_SIZE

    last_poll = 0
    q = 0.0
    seed = None

    running = True
    while running:
        now = time.time()
        for e in pg.event.get():
            if e.type == pg.QUIT:
                running = False
            if e.type == pg.KEYDOWN:
                if e.key in (pg.K_ESCAPE, pg.K_q):
                    running = False

        # Poll RSSI a few times per second
        if now - last_poll >= 1.0 / POLL_HZ:
            rssi = read_rssi_dbm()
            q = rssi_to_quality(rssi)
            # Use RSSI to perturb RNG seed for subtle temporal changes
            seed = (hash((rssi, int(now * 1000))) & 0xFFFFFFFF)
            last_poll = now

        # Generate noise whose distribution depends on q
        rng = np.random.default_rng(seed)
        # Higher q -> finer grain; lower q -> blotchier
        sigma = 0.25 + 0.75*(1.0 - q)
        # Start with Gaussian noise, then smooth slightly for low q
        noise = rng.normal(0.5, sigma, size=(gh, gw))
        if q < 0.4:
            # quick-and-dirty box blur via rolling means
            noise = (np.roll(noise,1,0)+np.roll(noise,-1,0)+np.roll(noise,1,1)+np.roll(noise,-1,1)+noise)/5.0
        noise = np.clip(noise, 0, 1)

        rgb = palette(noise, q)
        # Scale up to window size
        surf = pg.surfarray.make_surface(np.kron(rgb, np.ones((PIXEL_SIZE, PIXEL_SIZE, 1))).swapaxes(0,1))
        screen.blit(surf, (0,0))

        # Tiny overlay with current quality
        pg.display.set_caption(f"Wi-Fi random pixels — quality={q:.2f}")
        pg.display.flip()
        clock.tick(FPS)

    pg.quit()
    sys.exit(0)

if __name__ == "__main__":
    main()
