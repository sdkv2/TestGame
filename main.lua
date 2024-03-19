function love.load()
    y = 0
    downwards = false
    font = love.graphics.newFont("papyrus.ttf", 64)
    myImage = love.graphics.newImage("sheep.png")
    myText = love.graphics.newText(font, {{0,0,1} , "I am a sheep!"})
    
    -- Initialize game resources here
end
 
function love.update(dt)
        if y >= 500 or downwards == true then
            y = y - 3
            downwards = true

            if y < 0 then
                downwards = false
            end

        elseif downwards == false or y <= 0 then
            downwards = false
            y = y + 3
        end

    end
function love.draw()
    love.graphics.draw(myText, 100, y + 75)
    love.graphics.draw(myImage, 200, y)
    
    -- Draw game objects here
end