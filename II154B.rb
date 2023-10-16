live_loop :II154B do
  use_random_seed 112
  set_volume! 1
  use_bpm 100
  n1 = 28
  n2 = 29
  rc10 = rrand_i(4,8)
  with_synth :tb303 do
    with_fx :bitcrusher,
      bits: rrand_i(2,6),
    sample_rate: 44000 do
      rc10.times do
        play n1,
          #amp: 0,
          amp: (ring 0,2,1,3).tick,
          attack: 0.05,
          sustain: 0.5,
          release: 0.05,
          wave: 2
        play n1+0.25,
          #amp: 0,
          amp: (ring 3,2,1,0).mirror.tick,
          attack: 0.05,
          sustain: 0.5,
          release: 0.05,
          wave: 2
        play n1+0.5,
          amp: 0,
          #amp: (ring 3,2,1,0).tick,
          attack: 0.05,
          sustain: 0.5,
          release: 0.05,
          wave: 2
        play n2,
          #amp: 0,
          amp: (ring 0,1,2,3).tick,
          attack: 0.05,
          sustain: 0.5,
          release: 0.05,
          wave: 2
        sleep (ring 0.25, 0.5).reflect.tick
      end
    end
  end
end

