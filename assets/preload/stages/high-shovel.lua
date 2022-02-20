local keepScroll = false

function onCreate()
	makeLuaSprite('bg','FUCKING high',0,0)
	setObjectCamera('bg', 'hud')
	addLuaSprite('bg')
	setGraphicSize('iconP1', 2, 2)
	keepScroll = getPropertyFromClass('ClientPrefs', 'middleScroll');
	setPropertyFromClass('ClientPrefs', 'middleScroll', true);
end

function onDestroy()
	if not keepScroll then
	        setPropertyFromClass('ClientPrefs', 'middleScroll', false);
        end
end