live_loop :G2022_03_12_095A_DOOR do
  use_bpm 100
  n1 = 24
  n2 = 23
  with_synth :tb303 do
    with_fx :bitcrusher,
      bits: 2,
    sample_rate: 44000 do
      30.times do
        play n1,
          amp: (ring 1,4).tick,
          attack: 0.05,
          sustain: (stretch [0.25],4,[1],1).reflect.tick,
          release: 0.05,
          wave: 2
        play n1+0.25, amp: 1,
          attack: 0.05,
          sustain: (stretch [0.25],20,[1],1,[0.5],6).reflect.tick,
          release: 0.05,
          wave: 2
        play n1+0.5,
          amp: rrand(0,1),
          attack: 0.001,
          sustain: (stretch [0.5],4,[1],6,[0.25],4,[0.5],4).reflect.tick,
          release: 0.001,
          wave: 0
        play n2,
          amp: 2,
          attack: 0.05,
          sustain: (stretch [0.5],2,[1],6,[0.25],4).reflect.tick,
          release: 0.05,
          wave: 2
        sleep (ring 1, 0.5, 0.25,0.5).tick
      end
    end
  end
end
