-- Created by RamenDominoes (Feel free to credit or not I don't really care)
--Not bad for my first event created... I think

start = 0

finish = 0



function onCreate()
	

	--THE TOP BAR
	makeLuaSprite('UpperBar', 'empty', 0, -330)
	makeGraphic('UpperBar', 1980, 320, '000000')
	setObjectCamera('UpperBar', 'hud')
	addLuaSprite('UpperBar', true)


	--THE BOTTOM BAR
	makeLuaSprite('LowerBar', 'empty', 0, 720)
	makeGraphic('LowerBar', 1980, 320, '000000')
	setObjectCamera('LowerBar', 'hud')
	addLuaSprite('LowerBar', true)

end


function onUpdate()

	if start == 1 then
	
	doTweenY('Cinematics1', 'UpperBar', -235, 0.5, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 620, 0.5, 'Linear')
	noteTweenY('NOTEMOVE1', 0, 100, 0.5, 'Linear')	
	noteTweenY('NOTEMOVE2', 1, 100, 0.5, 'Linear')
	noteTweenY('NOTEMOVE3', 2, 100, 0.5, 'Linear')
	noteTweenY('NOTEMOVE4', 3, 100, 0.5, 'Linear')
	noteTweenY('NOTEMOVE5', 4, 100, 0.5, 'Linear')
	noteTweenY('NOTEMOVE6', 5, 100, 0.5, 'Linear')
	noteTweenY('NOTEMOVE7', 6, 100, 0.5, 'Linear')
	noteTweenY('NOTEMOVE8', 7, 100, 0.5, 'Linear')
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.25)
	doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.25)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.25)
	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.25)
	doTweenAlpha('AlphaTween9', 'ratings', 0, 0.25)

	end

	if downscroll and start == 1 then
	
	doTweenY('Cinematics1', 'UpperBar', -235, 0.5, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 620, 0.5, 'Linear')
	noteTweenY('NOTEMOVE1', 0, 520, 0.5, 'Linear')	
	noteTweenY('NOTEMOVE2', 1, 520, 0.5, 'Linear')
	noteTweenY('NOTEMOVE3', 2, 520, 0.5, 'Linear')
	noteTweenY('NOTEMOVE4', 3, 520, 0.5, 'Linear')
	noteTweenY('NOTEMOVE5', 4, 520, 0.5, 'Linear')
	noteTweenY('NOTEMOVE6', 5, 520, 0.5, 'Linear')
	noteTweenY('NOTEMOVE7', 6, 520, 0.5, 'Linear')
	noteTweenY('NOTEMOVE8', 7, 520, 0.5, 'Linear')
	doTweenAlpha('AlphaTween3', 'scoreTxt', 0, 0.25)
	doTweenAlpha('AlphaTween6', 'timeBar', 0, 0.25)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 0, 0.25)
	doTweenAlpha('AlphaTween8', 'timeTxt', 0, 0.25)
	doTweenAlpha('AlphaTween9', 'ratings', 0, 0.25)

	end


	if finish == 2 then
	
	doTweenY('Cinematics1', 'UpperBar', -330, 0.5, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 720, 0.5, 'Linear')
	noteTweenY('NOTEMOVE1', 0, 50, 0.5, 'Linear')	
	noteTweenY('NOTEMOVE2', 1, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE3', 2, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE4', 3, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE5', 4, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE6', 5, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE7', 6, 50, 0.5, 'Linear')
	noteTweenY('NOTEMOVE8', 7, 50, 0.5, 'Linear')
	doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.25)
	doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.25)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.25)
	doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.25)
	doTweenAlpha('AlphaTween9', 'ratings', 1, 0.25)
	
	end

	if downscroll and finish == 2 then
	
	doTweenY('Cinematics1', 'UpperBar', -330, 0.5, 'Linear')
	doTweenY('Cinematics2', 'LowerBar', 720, 0.5, 'Linear')
	noteTweenY('NOTEMOVE1', 0, 570, 0.5, 'Linear')	
	noteTweenY('NOTEMOVE2', 1, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE3', 2, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE4', 3, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE5', 4, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE6', 5, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE7', 6, 570, 0.5, 'Linear')
	noteTweenY('NOTEMOVE8', 7, 570, 0.5, 'Linear')
	doTweenAlpha('AlphaTween3', 'scoreTxt', 1, 0.25)
	doTweenAlpha('AlphaTween6', 'timeBar', 1, 0.25)
	doTweenAlpha('AlphaTween7', 'timeBarBG', 1, 0.25)
	doTweenAlpha('AlphaTween8', 'timeTxt', 1, 0.25)
	doTweenAlpha('AlphaTween9', 'ratings', 1, 0.25)
	
	end
	
end

function onEvent(name,value1,value2)
	if name == 'Cinematics' then
		start = tonumber(value1)
		finish = tonumber(value2)
			end
	
		end
