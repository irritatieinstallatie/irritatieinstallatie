live_loop :G2022_04_11_117BA do
  use_random_seed 104
  use_bpm 100
  n0 = rrand_i(16,24)
  with_synth :tb303 do
    with_fx :gverb, spread: 0.5, dry: 2, room: 77 do
      with_fx :bitcrusher,
      bits: (ring 1,2,3,4,5,6,7,8).choose do
        n0.times do
          play 70, amp: 2,
            attack: 0.01, attack_level: 0.75,
            sustain: 0.0125, decay: 0.0125,
            decay_level: 0.0125,release: 0.05,
            res: 0.5,
            wave: 0
          play 31, amp: 1.25,
            attack: 0.01, attack_level: 0.5,
            sustain: 0.0125,
            decay: 0.0125,
            decay_level: 0.0125,
            release: 1,
            res: 0.5,
            wave: (stretch [2],6,[1],1,[0],1,[1],1,[0],1).tick
          sleep 0.25
        end
      end
    end
  end
end
