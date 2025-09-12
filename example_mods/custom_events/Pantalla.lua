function onEvent(name, value1, value2)
if name == "Pantalla" then
if value1 == 'hola' then
doTweenAlpha('androidControls','androidControls',0,1)
doTweenY('BarraNegra1', 'BarradeArriba1', 0, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo1', 600, 1, 'quartOut')
elseif value1 =='adios' then
doTweenAlpha('androidControls','androidControls',0.5,1)
doTweenY('BarraNegra1', 'BarradeArriba1', -120, 1, 'quartOut')
doTweenY('BarraNegra2', 'BarradeAbajo1', 720, 1, 'quartOut')
      end
   end 
end
function onCreate()
  makeLuaSprite('BarradeArriba1', '', 0, -120)
	makeGraphic('BarradeArriba1', 1280, 120, '000000')
	setObjectCamera('BarradeArriba1', 'other')
	addLuaSprite('BarradeArriba1', false)

	makeLuaSprite('BarradeAbajo1', '', 0, 720)
	makeGraphic('BarradeAbajo1', 1280, 120, '000000')
	setObjectCamera('BarradeAbajo1', 'other')
	addLuaSprite('BarradeAbajo1', false)
end