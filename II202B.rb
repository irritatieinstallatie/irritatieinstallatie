live_loop :II202B do
  use_bpm 100
  with_synth :chipbass do
    with_fx :gverb, spread: 0.5, dry: 3, room: 55 do
      with_fx :reverb, damp: 0.5, room: 0.5 do
        with_fx :bitcrusher, bits: 5,
        sample_rate: 44000 do
          12.times do
            play 20,
              attack: 0.001,
              sustain: 0.25,
              release: 0.125
            play 30,
              attack: 0.001,
              sustain: 0.5,
              release: 0.5
            play 22,
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
