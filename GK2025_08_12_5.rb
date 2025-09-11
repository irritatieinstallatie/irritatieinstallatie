live_loop :GK2025_08_12_5 do
  use_random_seed 101
  use_bpm 100
  with_synth :blade do
    with_fx :ixi_techno, phase: 24, res: 0.125 do
      with_fx :flanger, delay: 24 do
        with_fx :bitcrusher, bits: 5, sample_rate: 44000 do
          with_fx :gverb, spread: 0.8, dry: 2, room: 55 do
            with_fx :reverb, damp: 0.7, room: 0.8 do
              with_fx :hpf do
                40.times do
                  play 26,
                    amp: 1,
                    attack: 0.001,
                    sustain: rrand(1,2),
                    release: 0.001,
                    cutoff: 120
                  play 28,
                    amp: 1,
                    attack: 0.001,
                    sustain: 1,
                    release: 0.001,
                    cutoff: 130
                  play 29,
                    amp: 1,
                    attack: 0.001,
                    sustain: 1,
                    release: 0.001,
                    cutoff: 130
                  play 32,
                    amp: 1,
                    attack: 0.001,
                    sustain: rrand(1,2),
                    release: 0.001,
                    cutoff: (line 60,80, steps: 10).choose
                  play 34,
                    amp: 1,
                    attack: 0.001,
                    sustain: rrand(1,2),
                    release: 0.001,
                    cutoff: (line 60,80, steps: 10).choose
                  play 48,
                    amp: 1,
                    attack: 0.001,
                    sustain: rrand(2,8),
                    release: 0.001,
                    cutoff: (line 60,80, steps: 10).choose
                  play 61,
                    amp: 1,
                    attack: 0.001,
                    sustain: rrand(2,4),
                    release: 0.001,
                    cutoff: 30
                  play 70,
                    amp: 1,
                    attack: 0.001,
                    sustain: rrand(8,12),
                    release: 0.001,
                    cutoff: 70
                  play 82,
                    amp: 1,
                    attack: 0.001,
                    sustain: rrand(1,10),
                    release: 0.001,
                    cutoff: 80
                  play 90,
                    amp: 1,
                    attack: 0.001,
                    sustain: rrand(1,10),
                    release: 0.001,
                    cutoff: 90
                  sleep 0.5
                end
              end
            end
          end
        end
      end
    end
  end
end
live_loop :GK2025_08_12_5 do
  use_random_seed 101
  use_bpm 100
  with_synth :blade do
    with_fx :ixi_techno, phase: 24, res: 0.125 do
      with_fx :flanger, delay: 24 do
        with_fx :bitcrusher, bits: 5, sample_rate: 44000 do
          with_fx :gverb, spread: 0.8, dry: 2, room: 55 do
            with_fx :reverb, damp: 0.7, room: 0.8 do
              with_fx :hpf do
                40.times do
                  play 26,
                    amp: 1,
                    attack: 0.001,
                    sustain: rrand(1,2),
                    release: 0.001,
                    cutoff: 120
                  play 28,
                    amp: 1,
                    attack: 0.001,
                    sustain: 1,
                    release: 0.001,
                    cutoff: 130
                  play 29,
                    amp: 1,
                    attack: 0.001,
                    sustain: 1,
                    release: 0.001,
                    cutoff: 130
                  play 32,
                    amp: 1,
                    attack: 0.001,
                    sustain: rrand(1,2),
                    release: 0.001,
                    cutoff: (line 60,80, steps: 10).choose
                  play 34,
                    amp: 1,
                    attack: 0.001,
                    sustain: rrand(1,2),
                    release: 0.001,
                    cutoff: (line 60,80, steps: 10).choose
                  play 48,
                    amp: 1,
                    attack: 0.001,
                    sustain: rrand(2,8),
                    release: 0.001,
                    cutoff: (line 60,80, steps: 10).choose
                  play 61,
                    amp: 1,
                    attack: 0.001,
                    sustain: rrand(2,4),
                    release: 0.001,
                    cutoff: 30
                  play 70,
                    amp: 1,
                    attack: 0.001,
                    sustain: rrand(8,12),
                    release: 0.001,
                    cutoff: 70
                  play 82,
                    amp: 1,
                    attack: 0.001,
                    sustain: rrand(1,10),
                    release: 0.001,
                    cutoff: 80
                  play 90,
                    amp: 1,
                    attack: 0.001,
                    sustain: rrand(1,10),
                    release: 0.001,
                    cutoff: 90
                  sleep 0.5
                end
              end
            end
          end
        end
      end
    end
  end
end
