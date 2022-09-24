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
function opponentNoteHit()

       health = getProperty('health')

    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.0095);
	end
end
