set_volume! 1
live_loop :II209A do
  use_bpm 100
  with_synth :chiplead do
    with_fx :gverb, spread: 0.5, dry: 2, room: 44 do
      #with_fx :reverb, damp: 0.5, room: 0.25 do
      with_fx :bitcrusher, bits: 5,
      sample_rate: 44000 do
        12.times do
          play 20,
            amp: 0,
            attack: 0.001,
            sustain: 0.25,
            release: 0.125
          play (ring 30, 32, 34),
            amp: 0,
            attack: 0.001,
            sustain: 0.25,
            release: 0.125
          play (ring 21,22),
            amp: 0,
            attack: 0.001,
            sustain: 0.25,
            release: 0.125
          play 60,
            amp: 1,
            attack: 0.001,
            sustain: 0.25,
            release: 0.125
          play 70,
            amp: 1,
            attack: 0.001,
            sustain: 0.25,
            release: 0.125
          play 80,
            amp: 1,
            attack: 0.001,
            sustain: 0.25,
            release: 0.125
          sleep 1
        end
      end
      #end
    end
  end
end

