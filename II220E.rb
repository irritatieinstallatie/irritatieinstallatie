live_loop :II220C do
  use_random_seed 101
  use_bpm 100
  with_synth :blade do
    with_fx :ixi_techno, pre_amp: 0.5, phase: 40, res: 0.5 do
      #with_fx :flanger, delay: 20 do
      #      with_fx :bitcrusher, bits: 5, sample_rate: 44000 do
      with_fx :gverb, spread: 0.8, dry: 5, room: 55 do
        #  with_fx :reverb, damp: 0.7, room: 0.8 do
        with_fx :hpf, cutoff: 80 do
          with_fx :lpf, cutoff: 80 do
            40.times do
              play 26,
                amp: 1,
                attack: 0.001,
                sustain: 0.125,
                release: 0.001,
                cutoff: 30
              play 28,
                amp: 1,
                attack: 0.001,
                sustain: 0.125,
                release: 0.001,
                cutoff: 30
              play 29,
                amp: 1,
                attack: 0.001,
                sustain: 0.125,
                release: 0.001,
                cutoff: 30
              play 32,
                amp: 1,
                attack: 0.001,
                sustain: 0.125,
                release: 0.001,
                cutoff: 40
              play 34,
                amp: 1,
                attack: 0.001,
                sustain: 0.125,
                release: 0.001,
                cutoff: 40
              play 48,
                amp: 1,
                attack: 0.001,
                sustain: 2,
                release: 0.001,
                cutoff: 50
              play 61,
                amp: 0.25,
                attack: 0.001,
                sustain: 0.5,
                release: 0.001,
                cutoff: 40
              play 70,
                amp: 0.05,
                attack: 0.001,
                sustain: 0.25,
                release: 0.001,
                cutoff: 40
              play 82,
                amp: 0.05,
                attack: 0.001,
                sustain: 12,
                release: 0.001,
                cutoff: 40
              play 90,
                amp: 0.05,
                attack: 0.001,
                sustain: 5,
                release: 0.001,
                cutoff: 40
              sleep 0.25
            end
          end
        end
      end
    end
    #end
    #   end
    #   end
  end
end
