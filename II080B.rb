live_loop :G2022_02_20_080B do
  use_bpm 100
  l0 = rrand_i(1,4)
  with_synth :tb303 do
    with_fx :bitcrusher,
      bits: rrand_i(1,4),
      sample_rate: 44000,
    cutoff: 100 do
      l0.times do
        play 32,
          amp: 2,
          attack: 0.001,
          sustain: 0.25,
          release: 0.001,
          wave: 2
        play 33,
          amp: 1,
          attack: 0.001,
          sustain: 0.25,
          release: 0.001,
          wave: 1
        play 34,
          amp: 1,
          attack: 0.001,
          sustain: 0.25,
          release: 0.001,
          wave: 2
        sleep 0.25
      end
    end
  end
end
