function onCreate()
    -- 创建文字对象，初始内容为空
    makeLuaText('animatedText', '', 300, 250, 200)
    setTextSize('animatedText', 40)
    setTextColor('animatedText', 'FFFFFF')
    setTextBorder('animatedText', 0.2, 'FFFFFF')
    addLuaText('animatedText')
    setProperty('animatedText.alpha', 0) -- 初始透明
end

function onEvent(name, value1, value2)
    if name == 'zj_text' then
        -- 设置文字内容
        setTextString('animatedText', value1)
        
        -- 重置透明度并显示文字
        setProperty('animatedText.alpha', 1)
        
        -- 如果有淡出时间，启动淡出计时器
        if value2 ~= '' and value2 ~= nil then
            local fadeTime = tonumber(value2)
            if fadeTime > 0 then
                runTimer('textFadeOut', fadeTime)
            end
        end
    end
end


function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'textFadeOut' then
        -- 淡出文字
        doTweenAlpha('textFadeTween', 'animatedText', 0, 1, 'linear')
    end
end