function onEvent(name, value1, value2)
	if name == 'badapplelol' and value1 == 'a' then
		makeLuaSprite('whitebg', '', -500, -300)
		makeGraphic('whitebg',5000,5000,'FFFFFF')
		addLuaSprite('whitebg', false)
		setProperty('dad.color', getColorFromHex('000000'))
		-- 使bf变黑  
		setProperty('boyfriend.color', getColorFromHex('000000'))
		setProperty('gf.color', getColorFromHex('000000'))
	end
	if name == 'badapplelol' and value1 == 'b' then
		removeLuaSprite('whitebg')
		setProperty('dad.color', getColorFromHex('FFFFFF'))
		setProperty('boyfriend.color', getColorFromHex('FFFFFF'))
		setProperty('gf.color', getColorFromHex('FFFFFF'))
	end

end