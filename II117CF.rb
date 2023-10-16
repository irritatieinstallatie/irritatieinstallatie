live_loop :G2022_01_07_117CF do
  use_random_seed 110
  use_bpm 100
  n0 = rrand_i(16,24)
  with_synth :tb303 do
    with_fx :gverb, spread: 0.5, dry: 2.0, room: 55 do
      with_fx :bitcrusher,
      bits: 1.5, sample_rate: 44000 do
        n0.times do
          play 70, amp: 1,
            attack: 0.01, attack_level: 0.75,
            sustain: 0.0125, decay: 0.0125,
            decay_level: 0.0125,release: 0.05
          play 31, amp: 1,
            attack: 0.01,
            attack_level: 0.75,
            sustain: 0.0125,
            decay: 0.2,
            decay_level: 0.0125,
            release: 0.05
          sleep 0.25
        end
        sleep rrand(0,0.05)
      end
      
    end
  end
end
