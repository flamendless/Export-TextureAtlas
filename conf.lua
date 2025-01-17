love.conf = function(t)
  t.window.width = 1
  t.window.height = 1
  t.window.x = -5
  t.window.y = -5
  
  t.modules.event    = true
  t.modules.graphics = true
  t.modules.image    = true
  t.modules.window   = true
  
  t.modules.audio    = false
  t.modules.data     = false
  t.modules.font     = false
  t.modules.joystick = false
  t.modules.keyboard = false
  t.modules.math     = false
  t.modules.mouse    = false
  t.modules.physics  = false
  t.modules.sound    = false
  t.modules.system   = false
  t.modules.thread   = false
  t.modules.timer    = false
  t.modules.touch    = false
  t.modules.video    = false
end

love.run = function()
  return function()
    if love.event then
      love.event.pump()
      for name, a,b,c,d,e,f in love.event.poll() do
        if name == "quit" then
          return a or 0
        end
      end
    end
  end
end