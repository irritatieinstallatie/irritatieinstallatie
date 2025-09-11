live_loop :II219C do
  use_bpm 100
  with_synth :blade do
    with_fx :slicer, phase: (stretch [0.125], 4, [5],4).tick, pulse_width: 0.25 do
      with_fx :flanger, delay: 7 do
        with_fx :bitcrusher, bits: 6, sample_rate: 44000 do
          with_fx :gverb, spread: 0.8, dry: 2, room: 55 do
            with_fx :reverb, damp: 0.7, room: 0.8 do
              8.times do
                play 25,
                  amp: 1,
                  attack: 0.001,
                  sustain: 1,
                  release: 0.001,
                  cutoff: 60,
                  vibrato_rate: 1
                play 30,
                  amp: 1,
                  attack: 0.001,
                  sustain: 1,
                  release: 0.001,
                  cutoff: 60,
                  vibrato_rate: 1
                play 35,
                  amp: 0,
                  attack: 0.001,
                  sustain: 1,
                  release: 0.001,
                  cutoff: 60,
                  vibrato_rate: 1
                play 45,
                  amp: 1,
                  attack: 0.001,
                  sustain: 1,
                  release: 0.001,
                  cutoff: 60,
                  vibrato_rate: 1
                play 61,
                  amp: 1,
                  attack: 0.001,
                  sustain: 1,
                  release: 0.001,
                  cutoff: 40,
                  vibrato_rate: 8
                play 70,
                  amp: 1,
                  attack: 0.001,
                  sustain: 1,
                  release: 0.001,
                  cutoff: 70,
                  vibrato_rate: 1
                play 82,
                  amp: 1,
                  attack: 0.001,
                  sustain: 12,
                  release: 0.001,
                  cutoff: 60,
                  vibrato_rate: 8
                play 90,
                  amp: 1,
                  attack: 0.001,
                  sustain: 2,
                  release: 0.001,
                  cutoff: 80,
                  vibrato_rate: 1
                sleep 0.5
              end
            end
          end
        end
      end
    end
  end
end
