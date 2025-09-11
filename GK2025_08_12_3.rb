live_loop :GK_2025_08_12_3A do
  use_bpm 100
  with_synth :gabberkick do
    with_fx :gverb, spread: 0.75, dry: 0.75, room: 55 do
      with_fx :reverb, damp: 0.75, dry: 0.75, room: 0.25 do
        with_fx :bitcrusher, bits: (ring 3,4,5,4,3).choose do
          with_fx :slicer, phase: 0.25, pulse_width: (ring 0.25, 0.125).choose do
            with_fx :compressor, relax_time: 0.125 do
              12.times do
                play 20,
                  amp: 0.75,
                  attack: 0.001,
                  sustain: 0.125,
                  release: 0.125
                play (ring 30, 32, 34),
                  amp: 0.75,
                  attack: 0.001,
                  sustain: 0.125,
                  release: 0.125
                play (ring 21,22),
                  amp: 0.75,
                  attack: 0.001,
                  sustain: 0.125,
                  release: 0.125
                play 80,
                  amp: 1,
                  attack: 0.001,
                  sustain: 0.125,
                  release: 0.125
                sleep 1
              end
            end
          end
        end
      end
    end
  end
end

live_loop :GK_2025_08_12_3B do
  use_bpm 100
  with_synth :sc808_bassdrum do
    with_fx :gverb, spread: 0.5, room: 55 do
      with_fx :reverb, damp: 0.5, room: 0.25 do
        with_fx :bitcrusher, bits: (ring 3,4,5,4,3).tick do
          12.times do
            play 20,
              amp: 0.75,
              attack: 0.001,
              sustain: 0.25,
              release: 0.125
            play (ring 30, 32, 34),
              amp: 0.75,
              attack: 0.001,
              sustain: 0.125,
              release: 0.25
            play (ring 21,22),
              amp: 0.75,
              attack: 0.001,
              sustain: 0.25,
              release: 0.25
            sleep 1
          end
        end
      end
    end
  end
end