live_loop :II200B do
  use_bpm 100
  with_synth :chipbass do
    with_fx :bitcrusher, bits: 3,
    sample_rate: 44000 do
      2.times do
        play 20,
          attack: 0.001,
          sustain: 0.25,
          release: 0.125
        play 30,
          attack: 0.001,
          sustain: 0.5,
          release: 0.5
        sleep 1
      end
    end
  end
end
