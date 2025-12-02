live_loop :GK2025_08_13_2A do
  use_bpm 100
  with_synth :bass_foundation do
    with_fx :gverb, dry: 3.75, damp: 0.75, room: 77 do
      1.times do
        20.times do
          with_fx :bitcrusher,
            bits: 7,
          sample_rate: (line 23400, 10000, steps: 20).tick do
            with_fx :slicer, phase: 0.25, pulse_width: 0.5 do
              play 67, amp: 1,
                attack: 0.0125,
                sustain: 0.0,
                decay: 0,
                release: 0.125,
                wave: 2,
                res: (ring 0.5, 0.5, 0.95).tick
              sleep 0.25
            end
          end
        end
        if one_in(2)
          with_fx :slicer, phase: 0.5 do
            play 28, amp: rrand(4, 12),
              attack: 0.125,
              sustain: rrand(2.0, 4.0),
              release: 0.0
            sleep 0.5
          end
        else
          with_fx :slicer, phase: 0.5 do
            play 72, amp: 1,
              attack: 0.0125,
              sustain: 1,
              release: 0.0625
            sleep 0.5
          end
        end
        play rrand(40, 70), amp: 2, attack: rrand(0, 1)
      end
    end
  end
end
live_loop :GK2025_08_13_2B do
  use_bpm 100
  with_synth :gabberkick do
    with_fx :gverb, dry: 3.75, damp: 0.75, room: 77 do
      1.times do
        20.times do
          with_fx :bitcrusher,
            bits: 7,
          sample_rate: (line 23400, 10000, steps: 20).tick do
            with_fx :slicer, phase: 0.25, pulse_width: 0.5 do
              play 67, amp: 1,
                attack: 0.0125,
                sustain: 0.0,
                decay: 0,
                release: 0.125,
                wave: 2,
                res: (ring 0.5, 0.5, 0.95).tick
              sleep 0.25
            end
          end
        end
        if one_in(2)
          with_fx :slicer, phase: 0.5 do
            play 28, amp: rrand(4, 12),
              attack: 0.125,
              sustain: rrand(2.0, 4.0),
              release: 0.0
            sleep 0.5
          end
        else
          with_fx :slicer, phase: 0.5 do
            play 72, amp: 1,
              attack: 0.0125,
              sustain: 1,
              release: 0.0625
            sleep 0.5
          end
        end
        play rrand(40, 70), amp: 2, attack: rrand(0, 1)
      end
    end
  end
end