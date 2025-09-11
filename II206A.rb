live_loop :II206A do
  use_bpm 100
  with_synth :chipbass do
    with_fx :bitcrusher, bits: 4,
    sample_rate: 44000 do
      100.times do
        play 20,
          attack: 0.001,
          attack_level: 0,
          decay: 0,
          decay_level: 1,
          sustain: 0.25,
          #          sustain_level: 1,
          release: 0.001
        play 25,
          attack: 0.001,
          attack_level: 0,
          decay: 0,
          decay_level: 1,
          sustain: 0.5,
          #          sustain_level: 1,
          release: 0.001
        play 30,
          attack: 0.001,
          attack_level: 0,
          decay: 0,
          decay_level: 1,
          sustain: 0.125,
          #          sustain_level: 1,
          release: 0.001
        sleep 1
      end
    end
  end
end

