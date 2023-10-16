live_loop :II145 do
  set_volume! 1.000
  use_bpm 100
  n1 = 28
  n2 = 29
  rc10 = rrand_i(5,15)
  with_synth :tb303 do
    with_fx :reverb, room: 0.5 do
      with_fx :bitcrusher,
        bits: (ring 3,3,3,4,3,2).choose,
      sample_rate: 44000 do
        rc10.times do
          play n1,
            amp: (ring 1,2)
          .tick,
            attack: 0.05,
            sustain: 0.25,
            release: 0.05,
            wave: 2,
            cutoff: 100
          play n1+0.25,
            amp: (ring 2,1)
          .tick,
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 2,
            cutoff: 100
          play n1+0.5,
            amp: (ring 2,1)
          .tick,
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 2,
            cutoff: 100
          play n2,
            amp: (ring 2,1)
          .tick,
            attack: 0.05,
            sustain: 0.25,
            release: 0.05,
            wave: 2,
            cutoff: 100
          sleep (ring 0.25, 0.5)
          .reflect.tick
        end
      end
    end
  end
end
