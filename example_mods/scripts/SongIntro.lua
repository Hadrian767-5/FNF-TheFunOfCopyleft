--easy script configs
IntroTextSize = 25	--Size of the text for the Now Playing thing.
IntroSubTextSize = 50 --size of the text for the Song Name.
IntroTagColor = '2027df'	--Color of the tag at the end of the box.
IntroTagWidth = 10	--Width of the box's tag thingy.

-- 新增位置控制配置
IntroStartX = -400    -- 初始X位置（负数表示在屏幕左侧外）
IntroStartY = 400     -- 初始Y位置
IntroTargetX = 0      -- 目标X位置（移动到屏幕内的位置）
IntroTargetY = 400     -- 目标Y位置
IntroEndX = -450      -- 移出时的X位置（更靠左，移出屏幕）
IntroEndY = 400        -- 移出时的Y位置（保持同一水平线）
--easy script configs

--actual script
function onCreate()

	
	makeLuaSprite('card', songName, IntroStartX-IntroTagWidth, IntroStartY)
    addLuaSprite('card', true)
	setObjectCamera('card', 'other')
    setScrollFactor('card', 0, 0);
	-- 使用配置的位置
	makeLuaSprite('JukeBoxTag', 'empty', IntroStartX-IntroTagWidth, IntroStartY)
	makeGraphic('JukeBoxTag', 400+IntroTagWidth, 150, IntroTagColor)
	setObjectCamera('JukeBoxTag', 'other')
	addLuaSprite('JukeBoxTag', true)

	--the box
	makeLuaSprite('JukeBox', 'empty', IntroStartX-IntroTagWidth, IntroStartY)
	makeGraphic('JukeBox', 400, 150, '000000')
	setObjectCamera('JukeBox', 'other')
	addLuaSprite('JukeBox', true)

	
	
	--the text for the "Now Playing" bit
	makeLuaText('JukeBoxText', 'Now Playing:', 350, IntroStartX-IntroTagWidth, IntroStartY+15)
	setTextAlignment('JukeBoxText', 'left')
	setObjectCamera('JukeBoxText', 'other')
	setTextSize('JukeBoxText', IntroTextSize)
	setTextFont('JukeBoxText','JetBrainsMono-ExtraBold-Italic.ttf')
	addLuaText('JukeBoxText')

	
	
	--text for the song name
	makeLuaText('JukeBoxSubText', songName, 500, IntroStartX-IntroTagWidth+15, IntroStartY+80)
	setTextAlignment('JukeBoxSubText', 'left')
	setObjectCamera('JukeBoxSubText', 'other')
	setTextSize('JukeBoxSubText', IntroSubTextSize)
	if( songName == 'angry' or songName == 'hero')
	then
		setTextSize('JukeBoxText', 35)
		setTextSize('JukeBoxSubText', 100)
		setTextFont("JukeBoxSubText","1.ttf")
		setTextAlignment('JukeBoxSubText', 'left')
		setObjectCamera('JukeBoxSubText', 'other')
		setTextSize('JukeBoxSubText', IntroSubTextSize)
	else
		setTextFont("JukeBoxSubText","JetBrainsMono-Bold-Italic.ttf")
	end
	if( songName == 'necroptosis'or songName == 'muder sans' or songName == 'real')
	then

		setTextSize('JukeBoxText', 35)
		setTextSize('JukeBoxSubText', 35)
		setTextAlignment()
		setTextFont("JukeBoxText","SansICFont.ttf")
		setTextFont("JukeBoxSubText","Monster Friend Fore.ttf")
	end
	addLuaText('JukeBoxSubText')



	
end

--motion functions
function onSongStart()
	-- 移动到目标位置
	doTweenX('MoveInOne', 'JukeBoxTag', IntroTargetX, 1, 'CircInOut')
	doTweenY('MoveInOneY', 'JukeBoxTag', IntroTargetY, 1, 'CircInOut')
	
	doTweenX('MoveInTwo', 'JukeBox', IntroTargetX, 1, 'CircInOut')
	doTweenY('MoveInTwoY', 'JukeBox', IntroTargetY, 1, 'CircInOut')

	
	doTweenX('MoveInThree', 'JukeBoxText', IntroTargetX+20, 1, 'CircInOut')
	doTweenY('MoveInThreeY', 'JukeBoxText', IntroTargetY+15	, 1, 'CircInOut')
	
	doTweenX('MoveInFour', 'JukeBoxSubText', IntroTargetX+15, 1, 'CircInOut')
	doTweenY('MoveInFourY', 'JukeBoxSubText', IntroTargetY+80, 1, 'CircInOut')
	runTimer('card', 0.5, 1)
	doTweenX('MoveInFive', 'card', IntroTargetX, 1, 'CircInOut')
	
		
	
	runTimer('JukeBoxWait', 4, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag=='card' then
		
		doTweenY('MoveInFiveY', 'card', IntroStartY+150, 1, 'CircInOut')
	end
	if tag == 'JukeBoxWait' then
		-- 移出到结束位置
		doTweenX('MoveOutOne', 'JukeBoxTag', IntroEndX, 1.5, 'CircInOut')
		doTweenY('MoveOutOneY', 'JukeBoxTag', IntroEndY, 1.5, 'CircInOut')
		
		doTweenX('MoveOutTwo', 'JukeBox', IntroEndX, 1.5, 'CircInOut')
		doTweenY('MoveOutTwoY', 'JukeBox', IntroEndY, 1.5, 'CircInOut')



		doTweenX('MoveOutThree', 'JukeBoxText', IntroEndX, 1.5, 'CircInOut')
		doTweenY('MoveOutThreeY', 'JukeBoxText', IntroEndY+15, 1.5, 'CircInOut')
		
		doTweenX('MoveOutFour', 'JukeBoxSubText', IntroEndX, 1.5, 'CircInOut')
		doTweenY('MoveOutFourY', 'JukeBoxSubText', IntroEndY+80, 1.5, 'CircInOut')

		doTweenX('MoveOutFive', 'card', IntroEndX, 1.5, 'CircInOut')
		doTweenY('MoveOutFiveY', 'card', IntroEndY, 1.5, 'CircInOut')
	end
end