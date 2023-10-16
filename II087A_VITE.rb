live_loop :G2022_03_03_087A do
  use_random_seed (ring 107, 101, 114, 115, 117, 121, 123, 124, 125, 126, 127, 128).choose
  use_bpm 100
  n1 = 27
  n2 = 28
  with_synth :tb303 do
    with_fx :bitcrusher,
      bits: rrand_i(3,6),
    sample_rate: 44000 do
      with_fx :level, amp: 1 do
        40.times do
          play n1,
            amp: 2,
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 2
          play n1+0.25, amp: 1,
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 2
          play n1+0.5,
            amp: rrand_i(0,2),
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 2
          play n2,
            amp: 1.0,
            attack: 0.25,
            sustain: 0.5,
            release: 0.25,
            wave: 2
          sleep (stretch [0.5],rrand_i(10,20),[0.25],rrand_i(10,20)).tick
        end
      end
    end
  end
end
