live_loop :II221A do
  use_bpm 100
  with_synth :tb303 do
    with_fx :gverb, spread: 0.5, room: 55 do
      with_fx :bitcrusher, bits: 4,
      sample_rate: 44000 do
        2.times do
          play 20,
            amp: 0,
            attack: 0.001,
            sustain: 0.25,
            release: 0.001
          play 30,
            amp: 1,
            attack: 0.001,
            sustain: 0.5,
            release: 0.001
          play 22,
            amp: 1,
            attack: 0.001,
            sustain: 0.25,
            release: 0.001
          play 28,
            amp: 1,
            attack: 0.001,
            sustain: 0.25,
            release: 0.001
          play 29,
            amp: 1,
            attack: 0.001,
            sustain: 0.25,
            release: 0.001
          play 40,
            amp: 0,
            attack: 0.001,
            sustain: 0.25,
            release: 0.125
          play 50,
            amp: 0,
            attack: 0.001,
            sustain: 0.25,
            release: 0.125
          play 80,
            amp: 1,
            attack: 0.001,
            sustain: 0.25,
            release: 0.001
          sleep 0.5
        end
      end
    end
  end
end
