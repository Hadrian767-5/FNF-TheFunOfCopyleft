function onEvent(n, v1, v2)
    if n == 'zj_Film' then
        if v1 == '1' then
            makeLuaSprite('Overlay2', 'Film_Grain_2', -300, -200)
            addLuaSprite('Overlay2', true)
            setScrollFactor('Overlay2', 0, 0);
            scaleObject('Overlay2', 2.95, 3);
        end
        
        if v2 == '1' then
            removeLuaSprite('Overlay2', true)
        end
    end
end