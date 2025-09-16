local player = {}

function love.load()
    player.frameWidth = 38
    player.frameHeight = 28

    player.idleImage = love.graphics.newImage("assets/images/kingpig/Idle.png")
    player.idleImage:setFilter("nearest", "nearest")

    player.runImage = love.graphics.newImage("assets/images/kingpig/Run.png")
    player.runImage:setFilter("nearest", "nearest")

    player.image = player.idleImage
    player.quad = love.graphics.newQuad(0, 0, player.frameWidth, player.frameHeight, player.image:getDimensions())

    player.x = 100
    player.y = 100
    player.speed = 100

    player.direction = 1

    player.currentFrame = 1
    player.animationTimer = 0
    player.animationSpeed = 0.15

    player.idleFrames = {}
    player.runFrames = {}

    local idleWidth = player.idleImage:getWidth()
    for i = 0, (idleWidth / player.frameWidth) - 1 do
        table.insert(player.idleFrames, love.graphics.newQuad(i * player.frameWidth, 0, player.frameWidth, player.frameHeight, player.idleImage:getDimensions()))
    end

    local runWidth = player.runImage:getWidth()
    for i = 0, (runWidth / player.frameWidth) - 1 do
        table.insert(player.runFrames, love.graphics.newQuad(i * player.frameWidth, 0, player.frameWidth, player.frameHeight, player.runImage:getDimensions()))
    end
end

function love.update(dt)
    local moving = false

    if love.keyboard.isDown("d") then
        player.x = player.x + player.speed * dt
        player.direction = -1
        moving = true
    elseif love.keyboard.isDown("a") then
        player.x = player.x - player.speed * dt
        player.direction = 1
        moving = true
    end

    local newFrames
    local newImage

    if moving then
        newImage = player.runImage
        newFrames = player.runFrames
    else
        newImage = player.idleImage
        newFrames = player.idleFrames
    end

    if player.frames ~= newFrames then
        player.frames = newFrames
        player.image = newImage
        player.currentFrame = 1
        player.animationTimer = 0
    end

    player.animationTimer = player.animationTimer + dt
    if player.animationTimer >= player.animationSpeed then
        player.animationTimer = 0
        player.currentFrame = player.currentFrame + 1
        if player.currentFrame > #player.frames then
            player.currentFrame = 1
        end
    end

    player.quad = player.frames[player.currentFrame]
end

function love.draw()
    local scale = 4
    local scaleX = player.direction * scale
    local scaleY = scale
    local offsetX = 0

    if player.direction == -1 then
        offsetX = player.frameWidth * scale
    end

    love.graphics.draw(
        player.image,
        player.quad,
        player.x + offsetX, player.y,
        0,
        scaleX, scaleY
    )
end
