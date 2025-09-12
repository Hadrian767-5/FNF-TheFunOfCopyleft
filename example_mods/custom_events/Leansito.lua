function onCreatePost()
precacheImage('backgrounds/sus/Leansito')
end

function onEvent(name,value1,value2)
if name == 'Leansito' then
makeAnimatedLuaSprite('lean', 'backgrounds/sus/Leansito', -100, 50); 
addAnimationByPrefix('lean', 'anim2', 'leansito', 24, true); 
setObjectOrder('frontSUS', true)
setObjectOrder('lean', false)
setObjectOrder('bgSUS', false)
addLuaSprite('lean', false);
objectPlayAnimation('lean','anim2',false)
 runTimer('leanAdios',2)
end
end

function onTimerCompleted(tag)
	if tag == 'leanAdios' then
        removeLuaSprite('lean',false) 
end
end