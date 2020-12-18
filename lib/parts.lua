- never tried this before... a table for organizing "composed" musical parts
-- verses, choruses, bridges, melodies, generative things...?

local parts = {}

function parts.init()
  parts.quarter_beat = 0
  parts.sixteenth_beat = 0
  parts.thirtytwo_beat = 0
  -- parts.whatever_we_need = 0
end

function parts:whole_notes(phase)
  print("do a whole notes thing", phase)
  engine.amp(1)
  engine.hz(440)
  if song.measure == 100 then
    engine.hz(293.665)
  elseif song.measure % 4 == 1 then
    engine.hz(587.33)
  elseif song.measure % 15 == 1 then
    engine.hz(659.255)
  end
end

function parts:quarter_notes(phase)
  print("do a quarter_notes thing", phase)
  if math.random(1, 2) == 1 then
    engine.amp(.5)
    engine.hz(880)
  end
  self.quarter_beat = self.quarter_beat+1
  local beat = self.quarter_beat
  if beat>32 then
    -- rest
  elseif beat%31==0 then engine.hz(493.88/2)
  elseif beat%29==0 then engine.hz(523.25/2)
  elseif beat%27==0 then engine.hz(392.00/2)
  elseif beat%25==0 then engine.hz(329.63/2)
  elseif beat%23==0 then engine.hz(329.63/2)
  elseif beat%21==0 then engine.hz(329.63/2)
  elseif beat%17==0 then engine.hz(261.63/2)
  elseif beat%15==0 then engine.hz(329.63/2)
  elseif beat%11==0 then engine.hz(329.63/2)
  elseif beat%9==0 then engine.hz(246.94/2)
  elseif beat%7==0 then engine.hz(329.63/2)
  elseif beat%5==0 then engine.hz(329.63/2)
  elseif beat%1==0 then engine.hz(220.00/2)
  end
end

function parts:sixteenth_notes(phase)
  
  if math.random(1, 20) == 1 then
    engine.amp(.3)
    engine.hz(500)
  end
  self.sixteenth_beat = self.sixteenth_beat+1
  local beat = self.sixteenth_beat
  if beat<64 then
    -- nothing
  elseif beat%31==0 then engine.hz(493.88)
  elseif beat%29==0 then engine.hz(523.25)
  elseif beat%27==0 then engine.hz(392.00)
  elseif beat%25==0 then engine.hz(329.63)
  elseif beat%23==0 then engine.hz(329.63)
  elseif beat%21==0 then engine.hz(329.63)
  elseif beat%17==0 then engine.hz(261.63)
  elseif beat%15==0 then engine.hz(329.63)
  elseif beat%11==0 then engine.hz(329.63)
  elseif beat%9==0 then engine.hz(246.94)
  elseif beat%7==0 then engine.hz(329.63)
  elseif beat%5==0 then engine.hz(329.63)
  elseif beat%1==0 then engine.hz(220.00)
  end
end

function parts:thirtytwo_notes(phase) -- GHR added
  print("do a thirty two thing", phase)
  if math.random(1, 5) == 1 then
    engine.amp(.3)
    engine.hz(220)
    end
  self.thirtytwo_beat = self.thirtytwo_beat+1
  local beat = self.thirtytwo_beat
  if beat<128 then
    -- nothing
  elseif beat%31==0 then engine.hz(493.88)
  elseif beat%29==0 then engine.hz(523.25)
  elseif beat%27==0 then engine.hz(392.00)
  elseif beat%25==0 then engine.hz(329.63)
  elseif beat%23==0 then engine.hz(329.63)
  elseif beat%21==0 then engine.hz(329.63)
  elseif beat%17==0 then engine.hz(261.63)
  elseif beat%15==0 then engine.hz(329.63)
  elseif beat%11==0 then engine.hz(329.63)
  elseif beat%9==0 then engine.hz(246.94)
  elseif beat%7==0 then engine.hz(329.63)
  elseif beat%5==0 then engine.hz(329.63)
  elseif beat%1==0 then engine.hz(220.00)
  end
end


function parts:dotted_half_notes(phase)
  print("do a dotted_half_notes thing", phase)
end

function parts:crazy_part(phase)
  print("do a crazy_part thing", phase)
end


return parts
