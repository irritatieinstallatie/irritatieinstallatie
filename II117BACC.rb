live_loop :G2022_04_11_117BACC do
  use_random_seed 101
  use_bpm 100
  # n0 = (ring 16,20,24).tick
  n0 = rrand_i(16,24)
  with_synth :tb303 do
    with_fx :gverb, spread: 0.5, dry: 2, room: 77 do
      with_fx :bitcrusher,
      bits: (ring 2,3,4).tick do
        #      bits: (ring 1,2,3,1,2,3,4).choose do
        n0.times do
          play 70, amp: 1,
            attack: 0.01, attack_level: 0.75,
            sustain: (ring 0.0125, 0.025).tick,
            decay: 0.0125,
            decay_level: 0.0125,release: 0.05,
            res: 0.75,
            wave: 0
          play 31, amp: 1.0,
            attack: 0.01, attack_level: 0.5,
            sustain: (ring 0.0125, 0.025).tick,
            decay: 0.0125,
            decay_level: 0.0125,
            release: 1,
            res: 0.75,
            wave: (stretch [2],rrand_i(6,12),[1],2,[0],1,[2],1,[0],2).tick
          play 31, amp: 1,
            attack: 0.01, attack_level: 0.5,
            sustain: (ring 0.0125, 0.025).tick,
            decay: 0.0125,
            decay_level: 0.0125,
            release: 1,
            res: 0.75,
            wave: 2
          sleep 0.25
        end
      end
    end
  end
end
