live_loop :G2022_04_12_119AC do
  rn1 = rrand_i(9,12)
  n1 = 29
  use_bpm 120
  with_synth :tb303 do
    with_fx :gverb, spread: 0.5, dry: 4, room: 88 do
      with_fx :slicer, phase: 0.25, pulse_width: 0.5 do
        rn1.times do
          with_fx :bitcrusher,
            bits: 4,
          sample_rate: rrand(440,44000) do
            play n1-0.125,
              amp: 0.125,
              attack: 0.0125,
              sustain: 0.5,
              decay: 0, release: 0.125,
              wave: 2,
              res: 0.75
            play n1-1,
              amp: 0.5,
              attack: 0.0125,
              sustain: 0.5,
              decay: 0, release: 0.125,
              wave: 2,
              res: 0.75
            play n1,
              amp: 1.125,
              attack: 0.0125,
              sustain: 0.5,
              decay: 0, release: 0.125,
              wave: 2,
              res: 0.75
            play n1+1,
              amp: rrand(0,0.125),
              attack: 0.0125,
              sustain: 0.5,
              decay: 0, release: 0.05,
              wave: 2,
              res: 0.75
            play n1+0.125,
              amp: 0.125,
              attack: 0.0125,
              sustain: 0.5,
              decay: 0, release: 0.125,
              wave: 2,
              res: 0.75
            sleep 0.25
          end
        end
      end
    end
  end
end
