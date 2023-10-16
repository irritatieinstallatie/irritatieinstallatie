live_loop :G2022_04_05_121C do
  srn = rrand(440,44000)
  rn1 = rrand_i(9,12)
  use_bpm 120
  with_synth :tb303 do
    with_fx :gverb,
      spread: 0.05,
      dry: 4,
    room: 44 do
      with_fx :slicer,
        phase: 0.25,
      pulse_width: 0.5 do
        rn1.times do
          with_fx :bitcrusher,
            bits: 4,
          sample_rate: srn do
            play 35,
              amp: (ring 1.25,1.5).look,
              attack: 0.001,
              sustain: 0.5,
              decay: 0.0,
              release: 0.001,
              wave: 2,
              res: 0.05
            sleep 0.25
          end
        end
      end
    end
  end
end

