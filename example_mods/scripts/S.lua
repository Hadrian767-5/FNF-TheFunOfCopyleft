function onCreatePost() --script made by impostor, credit me now or i will do an unfunny
    makeLuaText("message", "Remaker:HeZhijun4030 ", 1000, screenWidth - 1230, 650)
    setTextAlignment("message", "left")
    setTextSize('message', 20)
    addLuaText("message")
   
    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('message.y', 680)
        setProperty('engineText.y', 660)
    end
end