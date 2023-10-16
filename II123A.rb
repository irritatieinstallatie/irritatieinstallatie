live_loop :G2022_05_08_123A do
  use_bpm 120
  with_synth :tb303 do
    with_fx :gverb, spread: 0.5, dry: 4, room: 77 do
      with_fx :bitcrusher,
        bits: 4,
      sample_rate: rrand_i(440, 44000) do
        with_fx :slicer, phase: 0.25, pulse_width: 0.5 do
          16.times do
            play 69,
              amp: 1,
              attack: 0.0125,
              sustain: (line 0.125, 0.25, steps: 16).tick,
              decay: 0, release: 0.125,
              wave: 1,
              res: (ring 0.5, 0.5, 0.5, 0.25).tick
            play 79,
              amp: 1,
              attack: 0.0125,
              sustain: (line 0.125, 0.25, steps: 16).tick,
              decay: 0, release: 0.125,
              wave: 1,
              res: (ring 0.5, 0.5, 0.5, 0.25).tick
            play 33, amp: rrand(1,2),
              sustain: 0.0675
            sleep 0.25
          end
        end
      end
    end
  end
end
