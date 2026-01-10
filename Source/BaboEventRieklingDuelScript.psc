Scriptname BaboEventRieklingDuelScript extends Quest  

Function RegisterEvents()
	RegisterForModEvent("On_BaboDiaSurrender", "Surrender")
	(BaboSexController as BaboSexControllerManager).ReadySurrender(true)
EndFunction

Function UnRegisterEvents()
	UnregisterForModEvent("Surrender")
	(BaboSexController as BaboSexControllerManager).ReadySurrender(false)
EndFunction

Function Defeated()
	PO3_Events_Alias.UnregisterForAllHitEventsEx(PlayerAlias)
	Utility.wait(2.0)
	if BaboDetectSpectatorKeyword.SendStoryEventAndWait(PlayerRef.GetCurrentLocation(), PlayerRef)
		BERT_RieklingChallenger.ForceRefTo(RieklingChallengerChief.getreference())
		BERT_RieklingMinion01.ForceRefTo(RieklingChallengerMinionA.getreference())
		BERT_RieklingMinion02.ForceRefTo(RieklingChallengerMinionB.getreference())
		BERT_RieklingMinion03.ForceRefTo(RieklingChallengerMinionC.getreference())
		BaboEventRieklingThirsk.setstage(10)
		;(BaboSexController as BaboSexControllerManager).FadeinScene(false)
		;(BaboSexController as BaboSexControllerManager).FadeoutScene(false)
		BaboEventQuest.setstage(255)
	else
		Debug.notification("Quest failed to initialize.")
	endif
EndFunction

ReferenceAlias Property BERT_RieklingChallenger Auto
ReferenceAlias Property BERT_RieklingMinion01 Auto
ReferenceAlias Property BERT_RieklingMinion02 Auto
ReferenceAlias Property BERT_RieklingMinion03 Auto

Event Surrender()
	if BaboEventQuest.getstage() == 160
		BaboEventQuest.setstage(180)
		BaboBrawlingSurrenderMsg.show()
		Game.ForceThirdPerson()
		PlayerRef.RestoreActorValue("health", 100)
		(BaboSexController as BaboSexControllerManager).LosingControl()
		Debug.sendanimationevent(PlayerRef, "BaboDefeatSurrender")
		PlayerRef.addtofaction(BaboPlayerSurrenderFaction)
		;PO3_Events_Alias.UnregisterForAllHitEventsEx(PlayerAlias)
		(BaboSexController as BaboSexControllerManager).MiscMessagebox(0)
	endif
EndEvent

Event Onupdategametime()
	if BaboEventQuest.getstage() == 140
		BaboEventQuest.setstage(230)
	elseif BaboEventQuest.getstage() == 150
		BaboEventQuest.setstage(230)
	endif
EndEvent


Quest Property BaboSexController Auto
Quest Property BaboEventQuest Auto
Quest Property BaboEventRieklingThirsk Auto
Message Property BaboBrawlingSurrenderMsg Auto
Actor Property PlayerRef Auto
ReferenceAlias Property RieklingChallengerChief Auto
ReferenceAlias Property RieklingChallengerMinionA Auto
ReferenceAlias Property RieklingChallengerMinionB Auto
ReferenceAlias Property RieklingChallengerMinionC Auto
ReferenceAlias Property PlayerAlias Auto
Faction Property BaboPlayerSurrenderFaction Auto
Keyword Property BaboDetectSpectatorKeyword Auto