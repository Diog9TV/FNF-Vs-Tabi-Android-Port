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