function onEvent(name,value1,value2)
if name == 'AdiosJuegoEntero' then
setProperty('camGame.alpha', 0);
        setProperty('camHUD.alpha', 0)
        runTimer('HolaJuego',0.1)
	end
end
function onTimerCompleted(tag)
if tag == 'HolaJuego' then
setProperty('camGame.alpha', 1);
        setProperty('camHUD.alpha', 1)
        end
end