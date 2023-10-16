live_loop :G2022_02_27_085B do
  rn1 = rrand_i(9,12)
  nr0 = 21
  br0 = (ring 3,4,5,5,5).choose
  use_bpm 120
  with_synth :tb303 do
    with_fx :gverb, spread: 0.5, room: 88 do
      with_fx :slicer, phase: 0.25, pulse_width: 0.5 do
        rn1.times do
          with_fx :bitcrusher,
            bits: br0,
          sample_rate: rrand(440,44000) do
            play nr0-0.125,
              amp: 0.125,
              attack: 0.0125,
              sustain: 0.5,
              decay: 0, release: 0.05,
              wave: 2,
              res: 0.75
            play nr0,
              amp: 1.0,
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

live_loop :G2022_03_11_093A do
  use_bpm 100
  nz0 = 35
  with_synth :tb303 do
    with_fx :gverb,
      spread: 0.5,
      dry: 3,
    room: 55 do
      10.times do
        play nz0+5, amp: 0.25,
          attack: 0.01,
          sustain: 0.5,
          release: 0.01,
          wave: 0
        play nz0+6, amp: 0.25,
          attack: 0.01,
          sustain: 0.5,
          release: 0.01,
          wave: 0
        play nz0+7, amp: 0.25,
          attack: 0.01,
          sustain: 0.5,
          release: 0.01,
          wave: 0
        play nz0+8, amp: 0.25,
          attack: 0.01,
          sustain: 0.5,
          release: 0.01,
          wave: 0
        play nz0+9, amp: 0.25,
          attack: 0.01,
          sustain: 0.5,
          release: 0.01,
          wave: 0
        sleep 0.5
      end
    end
  end
end



