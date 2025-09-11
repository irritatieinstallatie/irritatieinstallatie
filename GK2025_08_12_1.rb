set_volume! 1
xioja = rrand_i(7,11)
live_loop :GK2025_08_12_1A do
  use_bpm 100
  with_synth :bass_foundation do
    with_fx :pitch_shift, time_dis: 0.125 do
      with_fx :gverb, spread: 0.5, room: 55 do
        with_fx :bitcrusher, bits: (ring 1,2,3,4,5).tick, cutoff: (ring 60, 70, 80, 90, 100).tick do
          xioja.times do
            play 20,
              attack: 0.001,
              sustain: 0.125,
              release: 0.125
            play 30,
              attack: 0.001,
              sustain: 0.125,
              release: 0.0125
            play 22,
              attack: 0.001,
              sustain: 0.125,
              release: 0.0125
            sleep (ring 0.5, 0.25).choose
          end
        end
      end
    end
  end
end
live_loop :GK2025_08_12_1B do
  use_bpm 100
  with_synth :gabberkick do
    with_fx :compressor do
      with_fx :gverb, spread: 0.5, room: 55 do
        with_fx :bitcrusher, bits: 5, cutoff: 88 do
          xioja.times do
            play 20,
              attack: 0.001,
              sustain: 0.125,
              release: 0.125
            play 30,
              attack: 0.001,
              sustain: 0.125,
              release: 0.0125
            play 22,
              attack: 0.001,
              sustain: 0.125,
              release: 0.0125
            sleep (ring 0.5, 0.25).choose
          end
        end
      end
    end
  end
end