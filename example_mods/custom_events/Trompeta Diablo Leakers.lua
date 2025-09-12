function onCreatePost()
precacheImage('backgrounds/leakers/DEMONS_DANCE')
makeAnimatedLuaSprite('diablosfacha', 'backgrounds/leakers/DEMONS_DANCE', 185, 350); 
addAnimationByPrefix('diablosfacha', 'idle', 'DEMONS IDLE', 24, true); 
addAnimationByPrefix('diablosfacha', 'trompeta', 'DEMONS TROMPETA', 24, false); 
setObjectOrder('eldiabloandasueltoxd', false)
setObjectOrder('diablosfacha', false)
setObjectOrder('OswaldoElPistolas', false)
setObjectOrder('LaGenteKpa', false)
setObjectOrder('cantina', false)
addLuaSprite('diablosfacha', false);
end

function onEvent(name,value1,value2)
if name == 'Trompeta Diablo Leakers' then
objectPlayAnimation('diablosfacha','trompeta',false)
runTimer('BailenP', 6)
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'BailenP' then
objectPlayAnimation('diablosfacha','idle',true)
end
end