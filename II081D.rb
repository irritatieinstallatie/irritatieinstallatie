live_loop :G2022_02_21_081D do
  with_synth :tb303 do
    with_fx :bitcrusher,
      bits: (ring 2,3,4,5).choose,
    sample_rate: 44000 do
      with_fx :wobble,
        amp: 2,
        res: 0.5,
        smooth: 10,
        pulse_width: 0.125,
        phase: 0.5,
      wave: 2  do
        16.times  do
          play 30,
            amp: 1,
            attack: 0.5,
            sustain: 0.5,
            release: 0.01,
            res: 0.5,
            wave: 2
          play 25,
            amp: 1,
            attack: 0.5,
            sustain: 0.5,
            release: 0.01,
            res: 0.5,
            wave: 2
          sleep (stretch [0.5],12,[1],4).tick
        end
      end
    end
  end
end
