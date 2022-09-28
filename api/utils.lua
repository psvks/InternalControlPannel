local locales = {}
local variables = {}
local freeracex = {}
local key = {"substance_00000000000000"}
local keyGen = {"10000000000000"}

local index = 0

local ChatToSay = {
    "RACEX API: Loaded",
    "alex is a bad boy",
    "you are dumb",
    "wrong api i guess"
}


function getMath()
    index = math.random(ChatToSay)
end


game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ChatToSay[index], "All")

function setKeyCorrectly()
    keyGen = key
end

local core = {}

function core:CreateApi()
    print("FreeRacex: build 1000 loading.")
    print(locales)
    print(variables)
    print(freeracex)
    print(key)

    if key[1] == keyGen[1] then
        print("FreeRacex Will begin shortly.")
    else
        setKeyCorrectly()
        print("FreeRacex Will begin shortly.")
    end
end


function core:stackWait(delay)
    task.wait(delay)
end

function core:osclock()
    task.delay(2, function(scheduledTime)
        print(os.clock() - scheduledTime)
    end, os.clock())
end



return core

