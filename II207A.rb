use_bpm 100
live_loop :II207A do
  with_synth :blade do
    with_fx :gverb, spread: 0.5, dry: 2, room: 55 do
      12.times do
        play 67,
          amp: 1,
          attack: 0.01,
          sustain: 0.25,
          release: 0.01,
          cutoff: 120
        play 78,
          amp: 1,
          attack: 0.01,
          sustain: 0.25,
          release: 0.01,
          cutoff: 120
        
        
        play 80,
          amp: 1,
          attack: 0.01,
          sustain: 0.25,
          release: 0.01,
          cutoff: 120
        
        sleep 1
      end
    end
  end
end
