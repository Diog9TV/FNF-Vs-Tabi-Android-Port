local allowCountdown = false;

local allowCountdownEnd = false;

local continue = false;

function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then
        startDialogue('dialogue');
        allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
