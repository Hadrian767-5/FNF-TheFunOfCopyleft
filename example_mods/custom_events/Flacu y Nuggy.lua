function onCreatePost()
precacheImage('backgrounds/sus/FlacuyNuggy')
end

function onEvent(name,value1,value2)
if name == 'Flacu y Nuggy' then
makeAnimatedLuaSprite('fyn', 'backgrounds/sus/FlacuyNuggy', -270, 50); 
addAnimationByPrefix('fyn', 'anim1', 'flacu y nuggy', 24, false); 
setObjectOrder('frontSUS', true)
setObjectOrder('fyn', false)
setObjectOrder('bgSUS', false)
addLuaSprite('fyn', false);
objectPlayAnimation('fyn','anim1',false)
 runTimer('fynAdios',2)
end
end

function onTimerCompleted(tag)
	if tag == 'fynAdios' then
        removeLuaSprite('fyn',false) 
end
end