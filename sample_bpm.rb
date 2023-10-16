
live_loop :beat_slicer do
  n = 8
  
  d = 1.0 / n
  
  s = (line 0, 1, steps: n).choose
  
  f = s + d
  
  #  sample :ambi_choir, amp: (line 2.5, 7.5, steps: 10).choose, start: s, finish: f
  
  sleep d
end





