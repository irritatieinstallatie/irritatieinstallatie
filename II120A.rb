live_loop :G2022_04_03_120A do
  set_volume! 1
  use_bpm 100
  n1 = 31
  n2 = 34
  n3 = 61
  rc10 = rrand_i(12,24)
  wr0 = (ring 0,1,2).look
  with_synth :tb303 do
    with_fx :gverb, spread: 0.5, dry: 4, room: 55 do
      rc10.times do
        play n1, amp: (ring 1,2).tick,
          attack: 0.001,
          sustain: 0.125,
          release: 0.001,
          res: 0.125,
          wave: 2
        play n1+0.25, amp: (ring 2,1).tick,
          attack: 0.001,
          sustain: 0.125,
          release: 0.001,
          res: 0.125,
          wave: 2
        play n1+0.5,
          amp: (ring 2,1).tick,
          attack: 0.001,
          sustain: 0.125,
          release: 0.001,
          res: 0.125,
          wave: wr0
        play n1+0.75,
          amp: (ring 2,1).tick,
          attack: 0.001,
          sustain: 0.125,
          release: 0.001,
          res: 0.125,
          wave: wr0
        play n2,
          amp: (ring 1,2).tick,
          attack: 0.1,
          sustain: 0.125,
          release: 0.1,
          res: 0.125,
          wave: 2
        play n3+0.0,
          amp: (ring 2,1).tick,
          attack: 0.001,
          sustain: 0.05,
          release: 0.001,
          res: 0.125,
          wave: 0
        play n3+0.5,
          amp: (ring 2,1).tick,
          attack: 0.001,
          sustain: 0.05,
          release: 0.001,
          res: 0.125,
          wave: 0
        
        sleep (ring 0.25, 0.5).reflect.tick
      end
    end
  end
end


