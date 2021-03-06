
require("config")
require("framework.init")

-- define global module
game = {}

function game.startup()
    CCFileUtils:sharedFileUtils():addSearchPath("res/")
    display.addSpriteFramesWithFile(GAME_TEXTURE_DATA_FILENAME, GAME_TEXTURE_IMAGE_FILENAME)

    game.benchmark()
end

function game.exit()
    CCDirector:sharedDirector():endToLua()
    os.exit()
end

function game.benchmark()
    local BenchmarkScene = require("scenes.BenchmarkScene")
    display.replaceScene(BenchmarkScene.new())
end
