use_random_seed 313
use_bpm 100
live_loop :GK2025_08_18_1A do
  #use_bpm 120
  with_synth :tb303 do
    with_fx :gverb, room: 77 do
      2.times do
        32.times do
          with_fx :bitcrusher,
          bits: 5, cutoff: 120 do
            #            with_fx :slicer, phase: 0.25, pulse_width: 0.5 do
            play (ring 27, rrand(44,88)).choose, amp: 1,
              attack: 0.0125,
              sustain: 0.0,
              decay: 0,
              release: 0.125,
              wave: 1, res: (ring 0.25, 0.5, 0.95).tick
            sleep (ring 0.5, 0.25, 0.25, 0.5, 0.25).tick
            #end
          end
        end
        if one_in(2)
          play 48, amp: rrand(0.5, 1), attack: 0.0125, release: 0.0625
          sleep 0.25
        else
          play 47, amp: 1, attack: 0.0125, release: 0.0625
          sleep 0.25
        end
        
        play rrand(20, 60), amp: 2, attack: rrand(0, 1)
      end
      
    end
  end
end
live_loop :GK2025_08_18_1B do
  #use_bpm 120
  with_synth :gabberkick do
    with_fx :gverb, dry: 5, damp: 0.5, room: 55 do
      2.times do
        32.times do
          with_fx :bitcrusher, cutoff: 80,
          bits: 2 do
            with_fx :slicer, phase: 0.25, pulse_width: 0.5 do
              play (ring 47, rrand(22,44)).choose, amp: 1,
                attack: 0.0125,
                sustain: 0.0,
                decay: 0,
                release: 0.125,
                wave: 1, res: (ring 0.25, 0.5, 0.95).tick
              sleep (ring 0.5, 0.25, 0.25, 0.5, 0.25).tick
            end
          end
        end
        if one_in(2)
          play 58, amp: rrand(0.5, 1), attack: 0.0125, release: 0.0625
          sleep 0.25
        else
          play 57, amp: 1, attack: 0.0125, release: 0.0625
          sleep 0.25
        end
      end
    end
  end
end