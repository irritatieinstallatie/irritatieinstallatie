live_loop :G2022_04_11_117AC do
  use_bpm 100
  n0 = rrand_i(16,24)
  with_synth :tb303 do
    with_fx :gverb, spread: 1, dry: 2, room: 77 do
      with_fx :bitcrusher,
      bits: (ring 2,3,4,2,1).tick do
        n0.times do
          play (ring 69,70).reflect.tick, amp: 2,
            attack: 0.01, attack_level: 0.75,
            sustain: 0.0125, decay: 0.0125,
            decay_level: 0.0125,release: 0.05,
            res: 0.5,
            wave: 0
          play 31, amp: 1,
            res: 0.5,
            wave: 0
          sleep 0.25
        end
      end
    end
  end
end
