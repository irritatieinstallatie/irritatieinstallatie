live_loop :G2022_02_21_081C do
  with_synth :tb303 do
    with_fx :bitcrusher, bits: 4, sample_rate: 4400 do
      2.times  do
        play 30,
          amp: 2,
          attack: 0.01,
          sustain: 0.25,
          release: 0.01,
          res: 0.5,
          wave: 2
        play 25,
          amp: 2,
          attack: 0.1,
          sustain: 0.25,
          release: 0.1,
          res: 0.5,
          wave: 2
        sleep 0.5
      end
    end
  end
end
