ROT=require 'vendor/rotLove/rot'
function love.load()
	f =Display(81,25)
	em=EllerMaze:new(f:getWidth(), f:getHeight())
	em:create(calbak)
end
function love.draw() f:draw() end
ellerStr=''
function calbak(x,y,val)
	f:write(val==1 and '#' or '.', x, y)
end
local update=false
function love.update()
    if update then
        update=false
        em:create(calbak)
    end
end
function love.keypressed(key) update=true end
