-- Original Script by Shadow Mario
-- Fixed by Niko_matthew
trailEnabledDad = false;
trailEnabledBF = false;
timerStartedDad = false;
timerStartedBF = false;

DadtrailLength = 5;
DadtrailDelay = 0.08;
BFtrailLength = 5;
BFtrailDelay = 0.08;
BFAlpha = 0.5;
DadAlpha = 0.5;
function wd(r, qp)
    if qp == nil then
        qp = "%s";
    end
    local t={};
    for rt in string.gmatch(r, "([^"..qp.."]+)") do
table.insert(t, rt);
    end
    return t;
end
function onEvent(name, value1, value2)
	if name == "Toggle Trail" then
	      local b=wd(value1,","); 
	      local n=wd(value2,",");  
	      DadtrailLength = tonumber(n[1]);
	      DadtrailDelay = tonumber(n[2]);
        BFtrailLength = tonumber(n[3]);
        BFtrailDelay = tonumber(n[4]);
        BFAlpha = tonumber(n[5]);
        DadAlpha = tonumber(n[6]);
        b[1] = tonumber(b[1]);
        b[2] = tonumber(b[2]);
		if b[1] > 0 then
			if not timerStartedDad then
				runTimer('timerTrailDad', DadtrailDelay, 0);
				timerStartedDad = true;
			end
			trailEnabledDad = true;
			curTrailDad = 0;
		else
			trailEnabledDad = false;
		end

		if b[2] > 0 then
			if not timerStartedBF then
				runTimer('timerTrailBF', BFtrailDelay, 0);
				timerStartedBF = true;
			end
			trailEnabledBF = true;
			curTrailBF = 0;
		else
			trailEnabledBF = false;
		end
	end
end

curTrailDad = 0;
curTrailBF = 0;
function createTrailFrame(tag)
	num = 0;
	--color = -1;
	image = '';
	frame = 'BF idle dance';
	x = 0;
	y = 0;
	scaleX = 0;
	scaleY = 0;
	offsetX = 0;
	offsetY = 0;
	flipX = false;

	if tag == 'BF' then
		num = curTrailBF;
		curTrailBF = curTrailBF + 1;
		if trailEnabledBF then
			--color = getColorFromHex('00F7FF');
			image = getProperty('boyfriend.imageFile')
			frame = getProperty('boyfriend.animation.frameName');
			x = getProperty('boyfriend.x');
			y = getProperty('boyfriend.y');
			scaleX = getProperty('boyfriend.scale.x'); 
			scaleY = getProperty('boyfriend.scale.y'); 
			offsetX = getProperty('boyfriend.offset.x');
			offsetY = getProperty('boyfriend.offset.y');
			flipX = getProperty('boyfriend.flipX')
		end
	else
		num = curTrailDad;
		curTrailDad = curTrailDad + 1;
		if trailEnabledDad then
			--color = getColorFromHex('00F7FF');
			image = getProperty('dad.imageFile')
			frame = getProperty('dad.animation.frameName');
			x = getProperty('dad.x');
			y = getProperty('dad.y');
			scaleX = getProperty('dad.scale.x');
			scaleY = getProperty('dad.scale.y');
			offsetX = getProperty('dad.offset.x');
			offsetY = getProperty('dad.offset.y');
			flipX = getProperty('dad.flipX')
		end
	end

if tag == 'BF' then
	if num - BFtrailLength + 1 >= 0 then
		for i = (num - BFtrailLength + 1), (num - 1) do
			setProperty('psychicTrail'..tag..i..'.alpha', getProperty('psychicTrail'..tag..i..'.alpha') - (0.6 / (BFtrailLength - 1)));
		end
end
removeLuaSprite('psychicTrail'..tag..(num - BFtrailLength));
	if not (image == '') then
		trailTag = 'psychicTrail'..tag..num;
		makeAnimatedLuaSprite(trailTag, image, x, y);
		setProperty(trailTag..'.offset.x', offsetX);
		setProperty(trailTag..'.offset.y', offsetY);
		setProperty(trailTag..'.scale.x', scaleX);
		setProperty(trailTag..'.scale.y', scaleY);
		setProperty(trailTag..'.flipX', flipX);
		setProperty(trailTag..'.alpha', BFAlpha);
		--setProperty(trailTag..'.color', color);
		--setBlendMode(trailTag, 'add');
		addAnimationByPrefix(trailTag, 'stuff', frame, 0, false);
		addLuaSprite(trailTag, false);
	end
	end
	if tag == 'Dad' then
		if num - DadtrailLength + 1 >= 0 then
		for i = (num - DadtrailLength + 1), (num - 1) do
			setProperty('psychicTrail'..tag..i..'.alpha', getProperty('psychicTrail'..tag..i..'.alpha') - (0.6 / (DadtrailLength - 1)));
		end
end
removeLuaSprite('psychicTrail'..tag..(num - DadtrailLength));
	if not (image == '') then
		trailTag = 'psychicTrail'..tag..num;
		makeAnimatedLuaSprite(trailTag, image, x, y);
		setProperty(trailTag..'.offset.x', offsetX);
		setProperty(trailTag..'.offset.y', offsetY);
		setProperty(trailTag..'.scale.x', scaleX);
		setProperty(trailTag..'.scale.y', scaleY);
		setProperty(trailTag..'.flipX', flipX);
		setProperty(trailTag..'.alpha', DadAlpha);
		--setProperty(trailTag..'.color', color);
		--setBlendMode(trailTag, 'add');
		addAnimationByPrefix(trailTag, 'stuff', frame, 0, false);
		addLuaSprite(trailTag, false);
	end
	end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'timerTrailDad' then
		createTrailFrame('Dad');
	end

	if tag == 'timerTrailBF' then
		createTrailFrame('BF');
	end
end

