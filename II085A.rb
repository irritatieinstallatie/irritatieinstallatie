live_loop :G2022_02_27_085A do
  rn1 = rrand_i(9,12)
  nr0 = 21
  use_bpm 120
  with_synth :tb303 do
    with_fx :gverb, spread: 0.5, room: 88 do
      with_fx :slicer, phase: 0.25, pulse_width: 0.5 do
        rn1.times do
          with_fx :bitcrusher,
            bits: 4,
          sample_rate: rrand(440,44000) do
            play nr0-0.125,
              amp: 0.125,
              attack: 0.0125,
              sustain: 0.5,
              decay: 0, release: 0.05,
              wave: 2,
              res: 0.75
            play nr0,
              amp: 1.5,
              attack: 0.0125,
              sustain: 0.5,
              decay: 0, release: 0.05,
              wave: 2,
              res: 0.75
            play nr0+0.125,
              amp: 0.125,
              attack: 0.0125,
              sustain: 0.5,
              decay: 0, release: 0.05,
              wave: 2,
              res: 0.75
            sleep 0.25
          end
        end
      end
    end
  end
end
