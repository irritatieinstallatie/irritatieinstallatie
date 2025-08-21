set_volume! 1
use_bpm 100
live_loop :GK2025_08_20_116A_F_A_R_B_2_1_0 do
  n1 = 27
  n2 = 28
  rc10 = rrand_i(4,8)
  with_synth :tb303 do
    with_fx :reverb, room: 0.5, mix: 0.5 do
      with_fx :bitcrusher,
        bits: (ring 1,1,2,3,3).reflect.tick,
      sample_rate: 44000 do
        rc10.times do
          play n1, amp: (ring 0,1,2,3).tick,
            attack: 0.005,
            sustain: 0.125,
            release: 0.005,
            wave: 2
          play n1+0.25, amp: (ring 3,2,1,0).tick,
            attack: 0.005,
            sustain: 0.125,
            release: 0.005,
            wave: 2
          play n1+0.5,
            amp: (ring 3,2,1,0).tick,
            attack: 0.05,
            sustain: 0.125,
            release: 0.05,
            wave: 2
          play n2,
            amp: (ring 0,1,2,3).tick,
            attack: 0.05,
            sustain: 0.125,
            release: 0.05,
            wave: 2
          play 30,
            amp: (stretch [0],rc10-1,[1],1).tick,
            attack: 0.05,
            sustain: 0.125,
            release: 0.05,
            wave: 2
          sleep (ring 0.25, 0.5).reflect.tick
        end
      end
    end
  end
end
live_loop :GK2025_08_20_116A_F_A_R_B_2_1_1 do
  n1 = 27
  n2 = 28
  rc10 = rrand_i(4,8)
  with_synth :gabberkick do
    with_fx :reverb, room: 0.5, mix: 0.5 do
      with_fx :bitcrusher,
        bits: (ring 1,1,2,3,3).reflect.tick,
      sample_rate: 44000 do
        rc10.times do
          play n1, amp: 0.25*(ring 0,1,2,3).tick,
            attack: 0.005,
            sustain: 0.125,
            release: 0.005,
            wave: 2
          play n1+0.25, amp: 0.25*(ring 3,2,1,0).tick,
            attack: 0.005,
            sustain: 0.125,
            release: 0.005,
            wave: 2
          play n1+0.5,
            amp: 0.25*(ring 3,2,1,0).tick,
            attack: 0.05,
            sustain: 0.125,
            release: 0.05,
            wave: 2
          play n2,
            amp: 0.25*(ring 0,1,2,3).tick,
            attack: 0.05,
            sustain: 0.125,
            release: 0.05,
            wave: 2
          play 30,
            amp: 0.25*(stretch [0],rc10-1,[1],1).tick,
            attack: 0.05,
            sustain: 0.125,
            release: 0.05,
            wave: 2
          sleep (ring 0.25, 0.5).reflect.tick
        end
      end
    end
  end
end
