live_loop :G2022_04_05_121A do
  set_volume! 1
  srn = rrand(440,44000)
  rn1 = rrand_i(9,12)
  use_bpm 120
  with_synth :tb303 do
    with_fx :gverb,
      spread: 0.5,
      dry: 4,
    room: 44 do
      with_fx :slicer,
        phase: 0.25,
      pulse_width: 0.5 do
        rn1.times do
          with_fx :bitcrusher,
            bits: 3,#5
          sample_rate: srn do
            play 21,
              amp: 1.5,#1
              attack: 0.0125,
              sustain: 0.5,
              decay: 0.0,
              release: 0.05,
              wave: 2,
              res: 0.5
            sleep 0.25
          end
        end
      end
    end
  end
end
