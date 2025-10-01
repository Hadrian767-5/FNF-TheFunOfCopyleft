local defaultName = "The Fun of Copyleft'" -- add your mod name here
local songCreator = "DDTD & HeZhijun4030"
local toolCreator = "Astro" -- keep this in for credit or make sure to credit me in your mod!

if songName == "necroptosis" then -- put your song name here!  
    songCreator = "DDTD & HeZhijun4030" -- put composors here!
end    

function onSongStart()
    setPropertyFromClass("openfl.Lib", "application.window.title", defaultName .. " - Playing: " .. songName .. " (" .. difficultyName .. ")" .. " | Composer: " .. songCreator); -- 移除了最后的 ..
end

function onDestroy() -- can change to onSongEnd() if that works better for you (i don't recommend it though)
    setPropertyFromClass("openfl.Lib", "application.window.title", defaultName);
end