live_loop :II205B do
  use_bpm 100
  with_synth :chipbass do
    with_fx :gverb, spread: 0.5, room: 44 do
      with_fx :reverb, damp: 0.5, room: 0.25 do
        with_fx :bitcrusher, bits: (ring 3,4,5,4,3).tick,
        sample_rate: 44000 do
          12.times do
            play 20,
              attack: 0.001,
              sustain: 0.25,
              release: 0.125
            play (ring 30, 32, 34),
              attack: 0.001,
              sustain: 0.125,
              release: 0.25
            play (ring 21,22),
              amp: 1,
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


