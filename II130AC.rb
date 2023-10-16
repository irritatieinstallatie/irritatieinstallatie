
live_loop :G2022_06_09_130AC do
  use_random_seed (ring 107,108).tick
  use_bpm 100
  with_synth :blade do
    with_fx :reverb, room: 0.75, mix: 0.25 do
      with_fx :slicer, phase: 0.5, pulse_width: 0.75, mix: 0.5 do
        with_fx :krush,
        res: 0.5, cutoff: 100 do
          40.times do
            play 60,
              amp: rrand_i(0,1),
              attack: 0.01,
              sustain: (stretch [0.25], 10, [0.5], 10).tick,
              release: 0.01
            play 70,
              amp: rrand_i(0,1),
              attack: 0.01,
              sustain: (stretch [0.25], 10, [0.5], 10).tick,
              release: 0.01
            play 80,
              amp: rrand_i(0,1),
              attack: 0.01,
              sustain: (stretch [0.25], 10, [0.5], 10).tick,
              release: 0.01
            sleep 0.25
          end
        end
      end
    end
  end
end

