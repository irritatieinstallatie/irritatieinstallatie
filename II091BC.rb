live_loop :G2022_03_10_091BC do
  set_volume! 1
  use_bpm 100
  n1 = 28
  n2 = 29
  rc10 = rrand_i(4,8)
  with_synth :tb303 do
    with_fx :bitcrusher,
      bits: 4,#rrand(2,4),
    sample_rate: 44000 do
      rc10.times do
        play n1, amp: (ring 0.25,1).tick,
          attack: 0.05,
          sustain: 0.25,
          release: 0.05,
          res: 0.001,
          wave: 2
        play n1+0.25, amp: (ring 1,0.25).tick,
          attack: 0.05,
          sustain: 0.5,
          release: 0.05,
          res: 0.001,
          wave: 2
        play n1+0.5,
          amp: (ring 1,0.25).tick,
          attack: 0.05,
          sustain: 0.5,
          release: 0.05,
          res: 0.001,
          wave: 2
        play n2,
          amp: (ring 0.25,1).tick,
          attack: 0.05,
          sustain: 0.5,
          release: 0.05,
          res: 0.001,
          wave: 2
        sleep (ring 0.25, 0.5).reflect.tick
      end
    end
  end
end