function love.load()
    y = 1
    x = 0
    downwards = false
    font = love.graphics.newFont("papyrus.ttf", 64)
    myImage = love.graphics.newImage("sheep.png")
    myText = love.graphics.newText(font, {{0,0,1} , "I am a sheep!"})
    
    -- Initialize game resources here
end
 
function love.update(dt)
        if y >= 400 or downwards == true then
            y = y - 90 * dt
            downwards = true

            if y < 0 then
                downwards = false
            end

        elseif downwards == false or y <= 0 then
            downwards = false
            y = y * 1.05 + 5 * dt
        end
    if love.keyboard.isDown("right") and x < 400 then
        x = x + 3
    end
    if love.keyboard.isDown("left") and x > -75 then
        x = x - 3
    end
    
end

function love.draw()
    love.graphics.draw(myText, 100 + x, y + 75)
    love.graphics.draw(myImage, 200 + x, y)
    
    -- Draw game objects here
end