live_loop :G2022_02_21_081B do
  with_synth :tb303 do
    with_fx :bitcrusher, bits: 4, sample_rate: 4400 do
      play 30,
        amp: 1,
        attack: 0.01,
        sustain: 0.25,
        release: 0.01,
        res: 0.5,
        wave: 2
      play 25,
        amp: 1,
        attack: 0.01,
        sustain: 0.25,
        release: 0.01,
        res: 0.5,
        wave: 2
      sleep (stretch [0.25],rrand_i(2,4),[0.125],8).tick
    end
  end
end
