function onCreate()
    -- 创建文字对象，初始内容为空
    makeLuaText('animatedText2', '', 2000, 65, 300)
    setTextSize('animatedText2', 45)
    setTextColor('animatedText2', 'FF0000')
    setTextBorder('animatedText2', 3, '000000')
    addLuaText('animatedText2')
    setProperty('animatedText2.alpha', 0) -- 初始透明
end

function onEvent(name, value1, value2)
    if name == 'zj_text_intro2' then
        -- 设置文字内容
        setTextFont('animatedText2',"Determination Mono.otf")
        setTextString('animatedText2', value1)
        setTextAlignment('animatedText2',"left")
        -- 重置透明度并显示文字
        setProperty('animatedText2.alpha', 1)
        
        -- 如果有淡出时间，启动淡出计时器
        if value2 ~= '' and value2 ~= nil then
            local fadeTime = tonumber(value2)
            if fadeTime > 0 then
                runTimer('textFadeOut2', fadeTime)
            end
        end
    end
end


function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'textFadeOut2' then
        -- 淡出文字
        doTweenAlpha('textFadeTween2', 'animatedText2', 0, 1, 'linear')
    end
end