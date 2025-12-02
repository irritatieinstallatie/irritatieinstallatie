live_loop :G2025_08_15_II091AAA do
  set_volume! 1.000
  use_bpm 100
  n1 = 28
  n2 = 29
  rc10 = rrand_i(5,15)
  with_synth :tb303 do
    with_fx :bitcrusher,
      bits: rrand_i(2,7),
    sample_rate: 44000 do
      rc10.times do
        play n1,
          amp: (ring 1,2)
        .tick,
          attack: 0.05,
          sustain: 0.25,
          release: 0.05,
          wave: 2
        play n1+0.25,
          amp: (ring 2,1)
        .tick,
          attack: 0.05,
          sustain: 0.5,
          release: 0.05,
          wave: 2
        play n1+0.5,
          amp: (ring 2,1)
        .tick,
          attack: 0.05,
          sustain: 0.5,
          release: 0.05,
          wave: 0
        play n2,
          amp: (ring 2,1)
        .tick,
          attack: 0.05,
          sustain: 0.5,
          release: 0.05,
          wave: 2
        sleep (ring 0.25, 0.25, 0.5)
        .mirror.tick
      end
    end
  end
end
