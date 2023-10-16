
live_loop :II147 do
  use_bpm 100
  n0 = (ring 6,4,8).tick
  with_synth :tb303 do
    with_fx :gverb, spread: 0.5, dry: 5, room: 55 do
      with_fx :bitcrusher,
      bits: 3.5 do
        #      bits: (ring 3,2.5,4,2.5,3,4,5).tick do
        n0.times do
          play 31, amp: 1,
            attack: 0.01, attack_level: 0.5,
            sustain: 0.125,
            decay: 0.05,
            decay_level: 0.5,
            release: 0.5,
            res: 0.005,
            wave: 0
          #wave: (stretch [2],6,
          #      [1],rrand_i(4,6),
          #     [0],rrand_i(1,4)
          #    ).tick
          sleep 0.25
        end
      end
    end
  end
end
