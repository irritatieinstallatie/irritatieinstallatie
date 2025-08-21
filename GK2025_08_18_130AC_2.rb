
live_loop :GK2025_08_18_130AC_2_0 do
  use_random_seed (ring 107,108).choose
  use_bpm 100
  with_synth :tb303 do
    with_fx :gverb, damp: 0.25, dry: 0.125, room: 55, mix: 0.25 do
      with_fx :slicer, phase: 0.5, pulse_width: 0.75, mix: 0.5 do
        with_fx :bitcrusher, bits: 8, cutoff: 77 do
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
live_loop :GK2025_08_18_130AC_2_1 do
  use_random_seed (ring 107,108).choose
  use_bpm 100
  with_synth :gabberkick do
    with_fx :gverb, room: 44, mix: 0.25 do
      with_fx :slicer, phase: 0.5, pulse_width: 0.75, mix: 0.5 do
        with_fx :bitcrusher, bits: 5, cutoff: 88 do
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

