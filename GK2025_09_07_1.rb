use_random_seed (ring 107,108).tick
live_loop :GK2025_09_07_1_0 do
  use_bpm 100
  with_synth :sc808_bassdrum do
    with_fx :gverb, room: 75, mix: 0.25 do
      with_fx :slicer, phase: 0.5, pulse_width: 0.75, mix: 0.5 do
        with_fx :krush,
        res: 0.5, cutoff: (line 60,80, steps: 10).mirror.tick do
          20.times do
            play 20,
              amp: rrand_i(0,1),
              attack: 0.01,
              sustain: 1,
              release: 0.01
            play 30,
              amp: rrand_i(0,1),
              attack: 0.01,
              sustain: (stretch [0.25], 8, [0.5], 8).tick,
              release: 0.01
            play 40,
              amp: rrand_i(0,1),
              attack: 0.01,
              sustain: (stretch [0.25], 8, [0.5], 8).tick,
              release: 0.01
            play 28,
              amp: rrand_i(0,1),
              attack: 0.01,
              sustain: (stretch [0.25], 8, [0.5], 8).tick,
              release: 0.01
            sleep 0.25
          end
        end
      end
    end
  end
end
live_loop :GK2025_08_12_5_1 do
  use_bpm 100
  with_synth :gabberkick do
    with_fx :gverb, dry: 3, damp: 0.5, room: 55, mix: 0.25 do
      with_fx :slicer, phase: 0.5, pulse_width: 0.25, mix: 0.5 do
        with_fx :bitcrusher, bits: 4, cutoff: (line 120,60, steps: 10).mirror.tick do
          with_fx :compressor, relax_time: 2.5, threshold: 0.8 do
            #         with_fx :krush,  res: 0.5, cutoff: (line 120,60, steps: 10).mirror.tick do
            20.times do
              play 28,
                amp: rrand_i(0,1),
                attack: 0.01,
                sustain: 1,
                release: 0.01,
                cutoff: (line 80, 120).choose,
                wave: 2
              play 29,
                amp: rrand_i(1,0),
                attack: 0.01,
                sustain: (stretch [0.25], 10, [0.5], 10).tick,
                release: 0.01,
                cutoff: (line 80, 120).choose,
                wave: 2
              play 30,
                amp: rrand_i(0,1),
                attack: 0.01,
                sustain: (stretch [0.25], 10, [0.5], 10).tick,
                release: 0.01,
                cutoff: (line 80, 120).choose,
                wave: 2
              play 40,
                amp: rrand_i(1,0),
                attack: 0.01,
                sustain: (stretch [0.25], 10, [0.5], 10).tick,
                release: 0.01,
                cutoff: (line 80, 120).choose,
                wave: 2
              sleep (ring 0.25, 0.5).choose
            end
          end
        end
      end
      #  end
    end
  end
end