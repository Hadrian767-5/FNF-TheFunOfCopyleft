function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Nedle Note (normal version)
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Nedle Note (normal version)' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'nedle_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'nedle_splash'); -- change splash
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
				setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0.2);
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false

dodgeAnimations = {'dodgeLEFT', 'dodgeDOWN', 'dodgeUP', 'dodgeRIGHT'}
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Nedle Note (normal version)' then
		characterPlayAnim('boyfriend', dodgeAnimations[noteData+1], true);
		setProperty('boyfriend.specialAnim', true);

		local animToPlay = '';
		if noteData == 0 then
			animToPlay = 'singLEFT-alt';
		elseif noteData == 1 then
			animToPlay = 'singDOWN-alt';
		elseif noteData == 2 then
			animToPlay = 'singUP-alt';
		elseif noteData == 3 then
			animToPlay = 'singRIGHT-alt';
		end
	end
end

missAnimations = {'smileLEFT', 'smileDOWN', 'smileUP', 'smileRIGHT'}
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Nedle Note (normal version)' then
		characterPlayAnim('boyfriend', missAnimations[noteData+1], true);
		setProperty('boyfriend.specialAnim', true);
		playSound('nedle', 0.75) --play sounds augh

		local animToPlay = '';
		if noteData == 0 then
			animToPlay = 'missLEFT-alt';
		elseif noteData == 1 then
			animToPlay = 'missDOWN-alt';
		elseif noteData == 2 then
			animToPlay = 'missUP-alt';
		elseif noteData == 3 then
			animToPlay = 'missRIGHT-alt';
		end
	end
end