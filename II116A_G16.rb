live_loop :G2022_04_03_116A_G16125 do
  set_volume! 1.0
  use_bpm 100
  n1 = 27
  n2 = 28
  rc10 = rrand_i(12,24)
  with_synth :tb303 do
    with_fx :reverb, room: 0.5, mix: 0.5 do
      with_fx :bitcrusher,
        bits: (ring 1.25,1.5,1.75).tick,
      sample_rate: 44000 do
        rc10.times do
          play n1,
            amp: (ring 0,2).tick,
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 2
          play n1+0.25,
            amp: (ring 2,0).tick,
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 2
          play n1+0.5,
            amp: (ring 2,0).tick,
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 0
          play n2,
            amp: (ring 0,2).tick,
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 2
          sleep (stretch [0.5], 6, [0.25],6).tick
        end
      end
    end
  end
end
