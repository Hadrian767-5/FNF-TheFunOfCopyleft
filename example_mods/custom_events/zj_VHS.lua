function onCreate()
    -- 创建文字对象，初始内容为空
    makeLuaText('animatedText', '', 1000, 200, 250)
    setTextAlignment('animatedText','right')
    setTextSize('animatedText', 50)
    setTextColor('animatedText', 'FFFFFF')
    setTextBorder('animatedText', 3, '000000')
    addLuaText('animatedText')
    setProperty('animatedText.alpha', 0) -- 初始透明
end

function onEvent(name, value1, value2)
    if name == 'zj_VHS' then
        -- 设置文字内容
        setTextFont('animatedText',"LXGWWenKaiMono-Medium.ttf")
        setTextString('animatedText', value1)
        setTextAlignment('animatedText',"center")
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