live_loop :G2022_02_20_080C do
  use_bpm 100
  with_synth :tb303 do
    with_fx :bitcrusher, bits: rrand_i(1,4), sample_rate: 44000 do
      10.times do
        play 41,
          amp: 1,
          attack: 0.025,
          sustain: 0.25,
          release: 0.025,
          wave: 1
        play 49,
          amp: 1,
          attack: 0.001,
          sustain: 0.25,
          release: 0.001,
          wave: 0
        play 47,
          amp: 1,
          attack: 0.001,
          sustain: 0.25,
          release: 0.001,
          wave: 0
        sleep 0.25
      end
    end
  end
end
