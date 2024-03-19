function love.load()
    y = 0
    downwards = false
    font = love.graphics.newFont("papyrus.ttf", 64)
    myImage = love.graphics.newImage("sheep.png")
    myText = love.graphics.newText(font, {{0,0,0} , "Hello, World!"})
    
    -- Initialize game resources here
end
 
function love.update(dt)
        myText:setf({{0.4,1,0.7} , "Hello, World!"}, 400, "center")
        myText:add({{1,0,0} , y}, 0, 200 + y)
        
        if y >= 500 or downwards == true then
            myText:add({{1,0,0} , y}, 0, 200 + y)
            y = y - 1
            downwards = true

            if y < 0 then
                downwards = false
            end

        elseif downwards == false or y <= 0 then
            myText:add({{1,0,0} , y}, 0, 200 + y)
            downwards = false
            y = y + 1
        end

    end
function love.draw()
    love.graphics.draw(myImage, 100, y)
    
    -- Draw game objects here
end