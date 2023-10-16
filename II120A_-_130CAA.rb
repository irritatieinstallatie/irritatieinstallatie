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
        play n1,
          amp: (ring 0,0.25).tick,
          attack: 0.001,
          sustain: 0.125,
          release: 0.001,
          res: 0.125,
          wave: 2
        play n1+0.25,
          amp: (ring 0.25,0).tick,
          attack: 0.001,
          sustain: 0.125,
          release: 0.001,
          res: 0.125,
          wave: 2
        play n1+0.5,
          amp: (ring 0.25,0).tick,
          attack: 0.001,
          sustain: 0.125,
          release: 0.001,
          res: 0.125,
          wave: wr0
        play n1+0.75,
          amp: (ring 0.25,0).tick,
          attack: 0.001,
          sustain: 0.125,
          release: 0.001,
          res: 0.125,
          wave: wr0
        play n2,
          amp: (ring 0,0.25).tick,
          attack: 0.1,
          sustain: 0.125,
          release: 0.1,
          res: 0.125,
          wave: 2
        play n3+0.0,
          amp: (ring 0.25,0).tick,
          attack: 0.001,
          sustain: 0.05,
          release: 0.001,
          res: 0.125,
          wave: 0
        play n3+0.5,
          amp: (ring 0.5,0.25).tick,
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
live_loop :G2022_06_09_130CAA do
  use_random_seed (ring 0,107,108).tick
  use_bpm 100
  with_synth :blade do
    with_fx :reverb, room: 0.75, mix: 0.25 do
      with_fx :slicer, phase: 0.5, pulse_width: 0.75, mix: 0.5 do
        with_fx :krush,
        res: 0.5, cutoff: (line 60,120, steps: 10).mirror.tick do
          20.times do
            play 60,
              amp: rrand_i(0,1),
              attack: 0.01,
              sustain: 1,
              release: 0.01
            play 60,
              amp: rrand_i(0,1),
              attack: 0.01,
              sustain: (stretch [0.25], 10, [0.5], 10).tick,
              release: 0.01
            play 70,
              amp: rrand_i(0,1),
              attack: 0.01,
              sustain: (stretch [0.25], 10, [0.5], 10).tick,
              release: 0.01
            play 80,
              amp: rrand_i(0,1),
              attack: 0.01,
              sustain: (stretch [0.25], 10, [0.5], 10).tick,
              release: 0.01
            sleep 0.25
          end
        end
      end
    end
  end
end
