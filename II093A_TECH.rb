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
