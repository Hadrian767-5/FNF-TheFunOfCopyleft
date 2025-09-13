function onEvent(n, v1, v2)
    if n == 'zj_Film_voice' then
        if v1 == '1' then
            makeAnimatedLuaSprite('Overlay','Film_Grain', -500, -240)
            addAnimationByPrefix('Overlay','dance','SNS FTTE Fil Grain layer2 (lower quality)_gif instance ',24,true)
            addLuaSprite('Overlay', true)
            setScrollFactor('Overlay', 0, 0)
            scaleObject('Overlay', 3, 3)
        end
        
        if v2 == '1' then
            removeLuaSprite('Overlay', true)
        end
    end
end



