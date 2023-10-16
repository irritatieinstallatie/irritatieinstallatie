live_loop :G2022_03_10_091AA0 do
  set_volume! 1.000
  use_bpm 100
  n1 = 28
  n2 = 29
  with_synth :tb303 do
    with_fx :bitcrusher,
      bits: 3,
    sample_rate: 44000 do
      with_fx :reverb, room: 0.5, mix: 0.125 do
        24.times do
          play n1,
            #amp: 0,
            amp: (ring 1,2).tick,
            attack: 0.025,
            sustain: 0.25,
            release: 0.025,
            wave: 2
          play n1+0.25,
            #amp: 0,
            amp: (ring 2,1).tick,
            attack: 0.025,
            sustain: 0.5,
            release: 0.025,
            wave: 2
          play n1+0.5,
            amp: 0.0,
            #amp: (ring 1,2).tick,
            attack: 0.025,
            sustain: 0.25,
            release: 0.025,
            wave: 0
          play n2,
            #amp: 0,
            amp: (ring 1,2,1).tick,
            attack: 0.025,
            sustain: 0.5,
            release: 0.025,
            wave: 2
          sleep (ring 0.25, 0.5)
          .reflect.tick
        end
      end
    end
  end
end
