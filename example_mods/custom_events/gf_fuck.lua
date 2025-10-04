
function onEvent(name,value1,value2)
if name == 'gf_fuck' then
    if value1== '1' then
        setProperty('gfGroup.visible', false)
    end
    if value1== '2' then
        setProperty('gfGroup.visible', true)
    end
	end
end