
live_loop :G2022_04_01_113H do
  #use_random_seed 101
  use_bpm 100
  with_synth :tb303 do
    with_fx :gverb, spread: 0.5, dry: 4, room: (ring 4,44).tick do
      with_fx :krush,
      res: (line 0.1, 0.9, steps: 10).choose do
        with_fx :nrbpf,
          centre: (ring 100, 75, 50).tick,
        res: 0.125 do
          with_fx :ixi_techno,
            phase: 0.125,
            res: 0.99,
          mix: (line 0, 1, steps: 10).mirror.tick do
            with_fx :slicer, phase: 0.5, pulse_width: 0.99 do
              20.times do
                play (ring 33, 33, 33).tick, amp: 1, attack: 0.05, sustain: 0.25, release: 0.05
                play (ring 47, 47, 47).choose, amp: 1, attack: 0.05, sustain: 0.25, release: 0.05
                play (ring 59, 59, 59).look, amp: 1, attack: 0.05, sustain: 0.25, release: 0.05
                play (ring 53,
                      39,
                      57,
                      81,
                      96).tick, amp: 1, attack: 0.05, sustain: 0.25, release: 0.05
                sleep 0.25
              end
            end
          end
        end
      end
    end
  end
end
