function onCreate()
    -- 创建文字对象，初始内容为空
    makeLuaText('animatedText3', '', 1000, 65, 300)
    setTextSize('animatedText3', 40)
    setTextColor('animatedText3', 'FFFFFF')
    setTextBorder('animatedText3', 3, '000000')
    addLuaText('animatedText3')
    setProperty('animatedText3.alpha', 0) -- 初始透明
end

function onEvent(name, value1, value2)
    if name == 'zj_text_cin' then
        -- 设置文字内容
        setTextFont('animatedText3',"Determination Mono.otf")
        setTextString('animatedText3', value1)
        setTextAlignment('animatedText3',"left")
        -- 重置透明度并显示文字
        setProperty('animatedText3.alpha', 1)
        
        -- 如果有淡出时间，启动淡出计时器
        if value2 ~= '' and value2 ~= nil then
            local fadeTime = tonumber(value2)
            if fadeTime > 0 then
                runTimer('textFadeOut3', fadeTime)
            end
        end
    end
end


function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'textFadeOut3' then
        -- 淡出文字
        doTweenAlpha('textFadeTween3', 'animatedText3', 0, 1, 'linear')
    end
end