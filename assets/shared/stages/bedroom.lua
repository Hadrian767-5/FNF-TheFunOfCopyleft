function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'bedwall', -600, -270);
	addLuaSprite('stageback', false);
	scaleObject('stageback', 1.5, 1.5);

	--makeLuaSprite('tablething', 'tablebed', 850, 520);
	--addLuaSprite('tablething', true);
	--scaleObject('tablething', 1.4, 1.4);

	makeLuaSprite('bedthing', 'bed', -550, 500);
	addLuaSprite('bedthing', false);
	scaleObject('bedthing', 1.4, 1.4);
	
	end

