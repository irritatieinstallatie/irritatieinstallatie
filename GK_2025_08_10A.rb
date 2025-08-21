set_volume! 1
use_bpm 100
vrtg=49
use_random_seed 101
amp1 = 0.25
live_loop :GK_2025_08_10A0 do
  with_synth :gabberkick do
    with_fx :gverb, room: 22 do
      7.times do
        play (ring 41, 57, 69), amp: 1, attack: 0.0125, decay: 0.125, release: 0.0125
        sleep 0.5
      end
      7.times do
        play (ring 32, 34, 69), amp: 1, attack: 0.0125, decay: 0.125, release: 0.0125
        sleep 0.5
      end
      35.times do
        play (ring 65, 35, 33), amp: 1, attack: 0.0125, decay: 0.0675, release: 0.0125
        sleep 0.25
      end
      28.times do
        play (ring 62, 35, 33), amp: 1, attack: 0.0125, decay: 0.0675, release: 0.0125
        sleep 0.25
      end
    end
  end
end
live_loop :GK_2025_08_10A1 do
  with_synth :dark_ambience do
    
    with_fx :gverb, room: 7 do
      
      3.times do
        play 88, amp: 2, attack: 0.125, sustain: 1.25, release: 0.125
        sleep 0.1
        play 89, amp: 2, attack: 0.125, sustain: 1.25, release: 0.125
        sleep 0.75
      end
      20.times do
        play rrand(55,66), amp: 22, attack: 0.0125, sustain: 0.1, release: 0.0125
        sleep 0.25
      end
      sleep 1#rrand(2,4)
    end
  end
end
live_loop :GK_2025_08_10A2 do
  with_synth :bass_foundation do
    with_fx :gverb, room: 20 do
      20.times do
        play (line 62, 72, steps: 10).mirror.tick, amp: 1.0, attack: 0.0125, sustain: 0.05, release: 0.0125
        sleep (ring 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.125, 0.25).tick
      end
      3.times do
        play rrand(30,34), amp: 7, attack: 0.125, release: 0.125
        sleep 0.25
      end
      7.times do
        play rrand(41,45), amp: 7, attack: 0.125, release: 0.125
        sleep 0.25
      end
      3.times do
        play rrand(30,34), amp: 7, attack: 0.125, release: 0.125
        sleep 0.25
      end
      sleep 0.5# rrand(3,5)
    end
  end
end