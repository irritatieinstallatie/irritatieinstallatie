use_random_seed 313
use_bpm 100
live_loop :GK2025_08_21_1A do
  #use_bpm 120
  with_synth :tb303 do
    with_fx :gverb, damp: 0.75, dry: 0.5, spread: 0.125, room: 55 do
      2.times do
        32.times do
          with_fx :bitcrusher,
          bits: 4, cutoff: 120 do
            with_fx :slicer, phase: 0.25, pulse_width: 0.5 do
              play (ring 27, rrand(22,44)).choose, amp: 1,
                attack: 0.0125,
                sustain: 0.001,
                decay: 0.0125,
                release: 0.125,
                wave: 2, res: (ring 0.25, 0.5, 0.95).tick
              sleep (ring 0.5, 0.25, 0.25, 0.5, 0.25).tick
              #end
            end
          end
          if one_in(2)
            play 28, amp: rrand(0.5, 1), attack: 0.0125, sustain: 0.125, release: 0.001, wave: 2
            sleep 0.25
          else
            play 29, amp: rrand(0.5, 1), attack: 0.0125, sustain: 0.125, release: 0.001, wave: 2
            sleep 0.25
          end
          
          play rrand(20, 30), amp: 1, attack: rrand(0, 0.25), sustain: 0.125, release: 0.05, wave: 2
        end
      end
    end
  end
end
live_loop :GK2025_08_21_1B do
  #use_bpm 120
  with_synth :gabberkick do
    with_fx :gverb, dry: 5, damp: 0.5, room: 55 do
      2.times do
        16.times do
          with_fx :bitcrusher, cutoff: 70,
          bits: 3 do
            with_fx :slicer, phase: 0.25, pulse_width: 0.25 do
              play (ring 27, rrand(22,44)).choose, amp: 1,
                attack: 0.0125,
                sustain: 0.05,
                decay: 0.05,
                release: 0.125,
                wave: 2, res: (ring 0.25, 0.5, 0.95).tick
              sleep (ring 0.5, 0.25, 0.25, 0.5, 0.25).choose
            end
          end
        end
        if one_in(2)
          play 28, amp: rrand(0.5, 1), attack: 0.0125, wave: 2
          sleep 0.25
        else
          play 27, amp: rrand(0.5, 1), attack: 0.0125, wave: 2
          sleep 0.25
        end
      end
    end
  end
end