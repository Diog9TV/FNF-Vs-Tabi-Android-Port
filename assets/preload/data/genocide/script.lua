local allowCountdown = false;
local allowCountdownEnd = false;
local continue = false;

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not continue and not seenCutscene then
        startVideo('genocide');
        continue = true;
		return Function_Stop;
	end
	if not allowCountdown and not seenCutscene then
        startDialogue('dialogue');
        allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bfknifedeath'); --Character json file for the death animation
end
function opponentNoteHit()
    cameraShake('game', 0.03, 0.3)
    health = getProperty('health')
    if getProperty('health') > 0.02 then
        setProperty('health', health- 0.02);
    end
end