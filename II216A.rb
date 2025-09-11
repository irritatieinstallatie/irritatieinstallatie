set_volume! 1
live_loop :II216A do
  use_bpm 100
  with_synth :blade do
    with_fx :gverb, spread: 0.5, dry: 2, room: 44 do
      #      with_fx :reverb, damp: 0.5, room: 0.25 do
      with_fx :bitcrusher, bits: 6,
      sample_rate: 44000 do
        24.times do
          play 20,
            amp: 1,
            attack: 0.001,
            sustain: 0.25,
            release: 0.001
          play 30,
            amp: 1,
            attack: 0.001,
            sustain: 0.25,
            release: 0.001
          play 40,
            amp: 1,
            attack: 0.001,
            sustain: 0.25,
            release: 0.001
          play 50,
            amp: 1,
            attack: 0.001,
            sustain: 0.25,
            release: 0.001
          play 60,
            amp: 1,
            attack: 0.001,
            sustain: 0.25,
            release: 0.001
          play 70,
            amp: 1,
            attack: 0.001,
            sustain: 0.25,
            release: 0.001
          play 80,
            amp: 1,
            attack: 0.001,
            sustain: 0.25,
            release: 0.001
          sleep 1
        end
      end
      #     end
    end
  end
end

