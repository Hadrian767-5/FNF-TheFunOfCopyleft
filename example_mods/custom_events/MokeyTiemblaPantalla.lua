function opponentNoteHit()
cameraShake('hud', 0.0075, 0.5)
cameraShake('game', 0.0075, 0.5)
    health = getProperty('health')
    if getProperty('health') > 0.3 then
        setProperty('health', health- 0.015);
    end
end