live_loop :II218A do
  use_bpm 100
  with_synth :blade do
    with_fx :flanger, delay: 12 do
      with_fx :bitcrusher, bits: 4 do
        with_fx :gverb, spread: 0.5, dry: 4, room: 88 do
          with_fx :reverb, damp: 0.7, room: 0.8 do
            24.times do
              play 30,
                amp: 1,
                attack: 0.001,
                sustain: 1,
                release: 0.001,
                cutoff: 80
              play 45,
                amp: 1,
                attack: 0.001,
                sustain: 1,
                release: 0.001,
                cutoff: 80
              play 70,
                amp: 1,
                attack: 0.001,
                sustain: 1,
                release: 0.001,
                cutoff: 80
              play 80,
                amp: 1,
                attack: 0.001,
                sustain: 1,
                release: 0.001,
                cutoff: 70
              play 90,
                amp: 1,
                attack: 0.001,
                sustain: 1,
                release: 0.001,
                cutoff: 80
              sleep 0.5
            end
          end
        end
      end
    end
  end
end
