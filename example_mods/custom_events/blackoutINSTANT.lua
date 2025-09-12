function onEvent(name, value1, value2)
	if name == 'blackoutINSTANT' and value1 == 'a' then
		makeLuaSprite('blackbg', '', -500, -300)
		makeGraphic('blackbg',5000,5000,'000000')
		addLuaSprite('blackbg', false)
		setProperty('boyfriend.color', '000000')
		setProperty('dad.color', '000000')
		setProperty('gf.color', '000000')
		setProperty('Overlay.y',-22560)
		setProperty('Overlay2.y',-22560)
	end
	if name == 'blackoutINSTANT' and value1 == 'b' then
		removeLuaSprite('blackbg')
		setProperty('boyfriend.color', getColorFromHex('FFFFFF'))
		setProperty('dad.color', getColorFromHex('FFFFFF'))
		setProperty('gf.color', getColorFromHex('FFFFFF'))
		setProperty('Overlay.y',-200)
		setProperty('Overlay2.y',-155)
	end
end