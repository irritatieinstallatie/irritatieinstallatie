live_loop :GK2025_08_13_1A do
  #  use_random_seed 107
  use_bpm 100
  with_synth :gabberkick do
    with_fx :gverb, spread: 0.5, dry: 5, room: 55, mix: 0.5 do
      with_fx :compressor, relax_time: 0.025  do
        with_fx :bitcrusher, bits: (ring 2,4,6,8).reflect.tick, cutoff: (ring 60, 80, 100, 120).reflect.tick do
          with_fx :ping_pong, feedback: (line 0.05, 0.5, steps: 4).reflect.tick do
            36.times do
              play (ring 20,21),
                amp: 0.5,
                attack_level: 0.5,
                attack: 0.001,
                sustain: 0.25,
                release: 0.001
              play (ring 22,23),
                amp: 0.5,
                attack_level: 0.5,
                attack: 0.001,
                sustain: 0.125,
                release: 0.001
              play (ring 23,24),
                amp: 0.5,
                attack_level: 0.5,
                attack: 0.001,
                sustain: 0.25,
                release: 0.001
              play (ring 25,26),
                amp: 0.5,
                attack_level: 0.5,
                attack: 0.001,
                sustain: 0.125,
                release: 0.001
              play (ring 27,28),
                amp: 0.5,
                attack_level: 0.5,
                attack: 0.001,
                sustain: 0.125,
                release: 0.001
              play (ring 29,30),
                amp: 0.5,
                attack_level: 0.5,
                attack: 0.001,
                sustain: 0.125,
                release: 0.001
              #sleep 0.25
              sleep (stretch [0.25],
                     16,
                     [0.5],
                     4,
                     [0.25],
                     4,
                     [0.125],
                     4,
                     [0.25],
                     4,
                     [0.5],
                     4).reflect.tick
            end
          end
          #sleep (ring 0,1).tick
        end
      end
    end
  end
end
