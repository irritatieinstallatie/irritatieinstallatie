live_loop :G2022_01_07_017BA do
  use_bpm 100
  n0 = 100
  with_synth :tb303 do
    with_fx :gverb, spread: 0.5, dry: 2.0, room: 55 do
      n0.times do
        with_fx :bitcrusher,
        bits: (ring 1.5,  (line 1.75, 2.25, steps: 48).tick).mirror.tick do
          play 70, amp: 1,
            attack: 0.01, attack_level: 0.75,
            sustain: 0.0125, decay: 0.0125,
            decay_level: 0.0125,release: 0.05#,
            #           res: 0.5,
            #            cutoff: 90
            play 30, amp: 1,
            attack: 0.01,
            attack_level: 0.75,
            sustain: 0.0125,
            decay: 0.2,
            decay_level: 0.0125,
            release: 0.05
          sleep 0.25
        end
      end
    end
  end
end
