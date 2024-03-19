function love.load()
    y = 1
    x = 0
    downwards = false
    font = love.graphics.newFont("papyrus.ttf", 64)
    myImage = love.graphics.newImage("sheep.png")
    myText = love.graphics.newText(font, {{0,0,1} , "I am a sheep!"})
    sheeps = {}

    
    -- Initialize game resources here
end

function createSheep()
    sheep = {}
    sheep.x = love.math.random(0, 800)
    sheep.y = love.math.random(0, 100)
    sheep.speed = 100
    sheep.image = love.graphics.newImage("sheep.png")
    sheep.scale = love.math.random(1, 3)
    sheep.red = love.math.random(0, 255)
    sheep.green = love.math.random(0, 255)
    sheep.blue = love.math.random(0, 255)

    table.insert(sheeps, sheep)
    return sheep
end
 
function love.update(dt)
        if y >= 600 or downwards == true then
            y = y - 90 * dt
            downwards = true

            if y <= 0 then
                downwards = false
            end

        elseif downwards == false or y <= 0 then
            downwards = false
            y = y + 100 * dt
        end
    if love.keyboard.isDown("right") and x < 800 then
        x = x + 3
    end
    if love.keyboard.isDown("left") and x > -75 then
        x = x - 3
    end
    
end

function love.keypressed(key)
    if key == "space" then
        createSheep()
    end
end

function love.draw()
    for i,v in ipairs(sheeps) do
        love.graphics.setColor(v.red/255, v.green/255, v.blue/255)
        love.graphics.draw(v.image, v.x, v.y + y, 0, v.scale, v.scale)
    end
    love.graphics.setColor(1, 1, 1)
    love.graphics.draw(myText, 100 + x, y + 75)
    love.graphics.draw(myImage, 200 + x, y)
    
    -- Draw game objects here
end