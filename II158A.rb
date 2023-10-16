
live_loop :II158A do
  set_volume! 1
  use_bpm 100
  n1 = 27
  n2 = 28
  rc10 = 120#rrand_i(4,8)
  with_synth :tb303 do
    with_fx :gverb, spread: 0.5, dry: 4, room: 88 do
      with_fx :bitcrusher,
        bits: 3,
        #   bits: rrand_i(1,6),
      sample_rate: 44000 do
        rc10.times do
          play n1, amp: (ring 0,1,2,3).tick,
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 2
          play n1+0.25, amp: (ring 3,2,1,0).tick,
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 2
          play n1+0.5,
            amp: (ring 3,2,1,0).tick,
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 0
          play n2,
            amp: (ring 0,1,2,3).tick,
            attack: 0.05,
            sustain: 0.5,
            release: 0.05,
            wave: 2
          sleep 0.25
          #          sleep (ring 0.25, 0.5).reflect.tick
        end
      end
    end
  end
end
