live_loop :G2022_04_03_116A_G do
  set_volume! 1
  use_bpm 100
  n1 = 27
  n2 = 28
  rc10 = rrand_i(4,8)
  with_synth :tb303 do
    with_fx :reverb, room: 0.5, mix: 0.5 do
      with_fx :bitcrusher,
        bits: (ring 2,1).reflect.tick,
      sample_rate: 44000 do
        rc10.times do
          play n1,
            amp: (ring 0,1).tick,
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 2
          play n1+0.25,
            amp: (ring 1,0).tick,
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 2
          play n1+0.5,
            amp: (ring 1,0).tick,
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 0
          play n2,
            amp: (ring 0,1).tick,
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 2
          #sleep 0.5
          sleep (stretch [0.25], 2, [0.5],2).reflect.tick
        end
      end
    end
  end
end
