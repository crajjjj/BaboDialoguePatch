Scriptname BaboCharmFactionScript extends ActiveMagicEffect  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	if akTarget == None || BDMScript == None
		return
	endif
	if !akTarget.haskeyword(BaboAlluredNPC)
		Race TargetRace = akTarget.getrace()
		BDMScript.CreatureRegister(akTarget, TargetRace)
endif
EndEvent
BaboDiaMonitorScript Property BDMScript Auto
Keyword Property BaboAlluredNPC Auto
