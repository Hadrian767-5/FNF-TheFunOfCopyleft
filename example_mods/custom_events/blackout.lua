function onCreate()

  makeLuaSprite('blackout', '', -500, -200)

  makeGraphic('blackout', 3120, 1080, '000000')

  setScrollFactor('blackout', 0, 0)

  addLuaSprite('blackout',true)

  setProperty('blackout.alpha', 0)

end

function onEvent(name, value1, value2)

  if name == 'blackout' then

    setProperty('blackout.alpha', 1)

    doTweenAlpha('blackoutbye', 'blackout', 0, value1, 'linear')

  end

end