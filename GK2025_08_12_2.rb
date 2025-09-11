live_loop :GK2025_08_12_2A do
  use_bpm 100
  with_synth :bass_foundation do
    with_fx :gverb, spread: 0.5, room: 55 do
      with_fx :reverb, damp: 0.5, room: 0.5 do
        with_fx :pitch_shift, time_dis: 0.5, pitch_dis: 0.01 do
          12.times do
            play 20,
              amp: 1,
              attack: 0.001,
              sustain: 0.25,
              release: 0.125
            play 30,
              amp: 1,
              attack: 0.001,
              sustain: 0.5,
              release: 0.5
            play 22,
              amp: 1,
              attack: 0.001,
              sustain: 0.25,
              release: 0.25
            sleep (ring 0.5, 0.25).reflect.tick
          end
        end
      end
    end
  end
end
live_loop :GK2025_10_12_2B do
  use_bpm 100
  with_synth :gabberkick do
    with_fx :gverb, spread: 0.5, room: 55 do
      with_fx :reverb, damp: 0.5, room: 0.5 do
        with_fx :bitcrusher, bits: 6, cutoff: 88,
        sample_rate: 44000 do
          with_fx :compressor, slope_above: 1.25, relax_time: 0.0125  do
            12.times do
              play 20,
                amp: 0.75,
                attack: 0.001,
                sustain: 0.25,
                release: 0.125
              play 30,
                amp: 0.75,
                attack: 0.001,
                sustain: 0.25,
                release: 0.125
              play 22,
                amp: 0.75,
                attack: 0.001,
                sustain: 0.25,
                release: 0.125
              play 99,
                amp: 0.75,
                attack: 0.001,
                sustain: 0.125,
                release: 0.125
              sleep (ring 0.5, 0.25).reflect.tick
            end
          end
        end
      end
    end
  end
end