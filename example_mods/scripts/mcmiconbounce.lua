function onBeatHit()

if curBeat % getProperty('gfSpeed') == 0 then

if curBeat % (getProperty('gfSpeed') * 2) == 0 then

setProperty('iconP1.angle', 15)
setProperty('iconP2.angle', 15)

else
 
setProperty('iconP1.angle', -15)
setProperty('iconP2.angle', -15)
 
end
end

doTweenAngle('icon1tween', 'iconP1', 0, crochet / 2000 * getProperty('gfSpeed'), 'cubicOut')
doTweenAngle('icon2tween', 'iconP2', 0, crochet / 2000 * getProperty('gfSpeed') , 'cubicOut')

end