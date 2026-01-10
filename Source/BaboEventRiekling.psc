Scriptname BaboEventRiekling extends Quest  


Function RegisterEvents()
	RegisterForModEvent("On_BaboDiaSurrender", "Surrender")
	(BaboSexController as BaboSexControllerManager).ReadySurrender(true)
EndFunction

Function UnRegisterEvents()
	UnregisterForModEvent("Surrender")
	(BaboSexController as BaboSexControllerManager).ReadySurrender(false)
EndFunction

Event Surrender()
	if BaboEventQuest.getstage() == 30
		BaboEventQuest.setstage(40)
		BaboBrawlingSurrenderMsg.show()
		Game.ForceThirdPerson()
		PlayerReference.RestoreActorValue("health", 100)
		(BaboSexController as BaboSexControllerManager).LosingControl()
		Debug.sendanimationevent(PlayerReference, "BaboDefeatSurrender")
		PlayerReference.addtofaction(BaboPlayerSurrenderFaction)
		PO3_Events_Alias.UnregisterForAllHitEventsEx(PlayerAlias)
		(BaboSexController as BaboSexControllerManager).MiscMessagebox(0)
	endif
EndEvent

Function LetThemHandleChallenger()
	int i = RieklingWarriors.length
	While 0 < i
		i -= 1
		if RieklingWarriors[i].getreference()
			(BaboSexController as BaboSexControllerManager).NPCChallengeStart(RieklingWarriors[i], RieklingChallenger)
		endif
	endwhile
	;I just ordered my boys to deal with him instead. He's not worth a single drip of my sweat.
EndFunction

Function ClearRieklingWarriors()
	int i = RieklingWarriors.length
	While 0 < i
		i -= 1
		if RieklingWarriors[i].getreference()
			(BaboSexController as BaboSexControllerManager).NPCpacifyAlias(RieklingWarriors[i], RieklingChallenger)
		endif
	endwhile
EndFunction

Function RepositionRieklingMinions()
	;PlayerReference.moveto(BaboEventRieklingFrontMarker)
	;(RieklingChallenger.getreference() as actor).moveto(BaboEventRieklingFrontMarker)
	RieklingMinion01.getreference().moveto(BaboEventRieklingMinionMarker01)
	RieklingMinion02.getreference().moveto(BaboEventRieklingMinionMarker02)
	RieklingMinion03.getreference().moveto(BaboEventRieklingMinionMarker03)
	;RieklingMinion02.ForceRefTo(BaboEventRieklingMinionMarker01.PlaceActorAtMe(SpawnRieklingW01, 4))
	;RieklingMinion03.ForceRefTo(BaboEventRieklingMinionMarker02.PlaceActorAtMe(SpawnRieklingW01, 4))
EndFunction

Function ActorMovetoPoint(Actor akactor, ObjectReference MovePoint = none)
	if MovePoint == none
		MovePoint = BaboEventRieklingFrontMarker
	endif
	akactor.moveto(MovePoint)
EndFunction

Function RieklingSexActor(Actor Actor01, Actor Actor02, string EventDummy = "", string EventName = "", bool bevent = false, bool brape = false)
	SexCountRiekling.SetValue(SexCountRiekling.GetValue() + 1)
	actor[] Sexactor = new actor[1]
	Sexactor[0] = Actor02
	(BaboSexController as BaboSexControllerManager).AddHadSexFaction(Sexactor, false)
	(BaboSexController as BaboSexControllerManager).SexCustomactor(Actor01, Actor02, None, None, None, "Riekling", "Vaginal", "CF", bevent, EventDummy, EventName, brape)
EndFunction

;"BABO_TRIThreesomeAfter", "TRIThreesomeAfter"

Function RieklingThreesome(ReferenceAlias Victim, ReferenceAlias RieklingAlias01)
	SexCountRiekling.SetValue(SexCountRiekling.GetValue() + 5)
	(BaboSexController as BaboSexControllerManager).SexCustom(Victim, RieklingAlias01, RieklingMinion01, None, None, "Aggressive", "CCF", "Threesome", True, "BABO_TRIThreesomeAfter", "TRIThreesomeAfter", true)
EndFunction

Function RieklingNewChallenge()
	RieklingChallenger.ForceRefTo(BaboEventRieklingEntranceMarker.PlaceActorAtMe(SpawnRiekling, 4))
EndFunction

;/ Function SceneActivate01() /;
	;/ BaboEventRieklingThirskScene01.Start() /;
;/ EndFunction /;

Function Setthestage()
	(BaboSexController as BaboSexControllerManager).FadeinScene(false)
	PlayerReference.RemoveAllItems(BaboEventRieklingConfiscatedChestRef, True, True)
	PlayerReference.moveto(BaboEventRieklingPlayerMarker)
	(BaboSexController as BaboSexControllerManager).ExhaustionIdle(PlayerReference, "Back")
	(BaboSexController as BaboSexControllerManager).LosingControl()
	;Debug.SendAnimationEvent(PlayerReference, "BaboDia_CrossCrux01")
	RepositionRieklingMinions()
	(BaboSexController as BaboSexControllerManager).FadeoutScene(false)
	BaboEventRieklingThirskScene02.forcestart()
EndFunction

Function AfterinitialSex(actor NewChief);still stage 40
	(BaboSexController as BaboSexControllerManager).RandomExhaustionIdle(PlayerReference)
	(BaboSexController as BaboSexControllerManager).FadeinScene(false)
	BaboDia_RieklingCrossCruxRef.Enable()
	;PlayerReference.RemoveAllItems(BaboEventRieklingConfiscatedChestRef, True, True)
	PlayerReference.moveto(BaboDia_RieklingCrossCruxRef)
	(BaboSexController as BaboSexControllerManager).LosingControl()
	Debug.SendAnimationEvent(PlayerReference, "BaboDia_CrossCrux01")
	NewChief.moveto(BaboEventRieklingMarker01)
	
	(BaboSexController as BaboSexControllerManager).FadeoutScene(false)
	BaboEventRieklingThirskScene02.forceStart()
EndFunction

Function RieklingMinionsGettoPlayer()
	SexCountRiekling.SetValue(SexCountRiekling.GetValue() + 5)
	(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(18)
	(BaboSexController as BaboSexControllerManager).SexCustom(PlayerAlias, RieklingMinion01, RieklingMinion02, None, None, "Aggressive", "CCF", "Threesome", True, "BABO_TRIInitialThreesome", "TRIInitialThreesome", true)
EndFunction

Function RieklingMinionsGettoPlayer02();this goes to 45
	SexCountRiekling.SetValue(SexCountRiekling.GetValue() + 5)
	(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(19)
	(BaboSexController as BaboSexControllerManager).SexCustom(PlayerAlias, RieklingMinion02, RieklingMinion03, None, None, "Aggressive", "CCF", "Threesome", True, "BABO_TRIInitialThreesome02", "TRIInitialThreesome02", true)
EndFunction

Function Fadeout(actor NewChief)
;Actor NewChief = AliasNewChief.GetReference() as actor
	(BaboSexController as BaboSexControllerManager).RandomExhaustionIdle(PlayerReference)
	(BaboSexController as BaboSexControllerManager).FadeinScene(false)

	utility.wait(4.0)
	Debug.SendAnimationEvent(PlayerReference, "IdleForceDefaultState")

	;NewChief.moveto(BaboEventRieklingMarker02)
	PlayerReference.moveto(BaboDia_RieklingCrossCruxRef)
	;CrossedRopeWoodRef.Activate(PlayerReference)
	(BaboSexController as BaboSexControllerManager).LosingControl()

	
	utility.wait(2.0)
	
	;GameHour - WIP
	
		;/ If SexCountNewRiekling.GetValue() == 0 /;
			;/ (BaboSexController as BaboSexControllerManager).FadeoutScene(false) /;
			;/ (BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(7) /;
			;/ Debug.SendAnimationEvent(PlayerReference, "BaboDia_CrossCrux01") /;
			;/ BaboEventRieklingThirskScene02.forceStart() /;
			;/ return /;
			;/ ;BaboEventQuest.setstage(50) /;
		;/ ElseIf SexCountNewRiekling.GetValue() >= 3 /;
			;/ (BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(11) /;
		;/ ElseIf SexCountNewRiekling.GetValue() >= 5 /;
			;/ (BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(12) /;
			;/ BaboEventQuest.setstage(60) /;
		;/ EndIf /;
		
	utility.wait(2.0)
	(BaboSexController as BaboSexControllerManager).FadeoutScene(false)
	BaboEventRieklingSexOnOff.SetValue(0)
	NewChief.EvaluatePackage()
EndFunction

Function Restincross()
	(BaboSexController as BaboSexControllerManager).LosingControl()
	utility.wait(1.0)
	UnEquipRestraints()
	;Game.DisablePlayerControls( true, true, true, false, true, false, true, false )
	;Game.SetPlayerAIDriven( true )
	CrossedRopeWoodRef.Activate(PlayerReference)
	utility.wait(30.0)
	(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(8)
	utility.wait(5.0)
	int iwait = 8
	GameHour.SetValue(iwait)
	utility.wait(30.0)
	(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(9)
	ActorMovetoPoint(PlayerReference, BaboEventRieklingFrontMarker)
	ActorMovetoPoint(RieklingChallenger.getreference() as actor, BaboEventRieklingFrontMarker)
	RieklingThreesome(PlayerAlias, RieklingChallenger)
EndFunction

Function NewChiefRape(Actor Victim, Actor Rapist)
	BaboEventRieklingSexOnOff.SetValue(1)
	(BaboSexController as BaboSexControllerManager).FadeinScene(false)
	Victim.moveto(BaboEventRieklingBackRoomMarker)
	Rapist.moveto(BaboEventRieklingBackRoomMarker)
	If SexCountNewRiekling.GetValue() == 0
		(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(13)
	ElseIf SexCountNewRiekling.GetValue() >= 1
		(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(14)
	EndIf
	(BaboSexController as BaboSexControllerManager).RecoverControl(false)
	;Game.EnablePlayerControls()
	;Game.SetPlayerAIDriven(false)
	(BaboSexController as BaboSexControllerManager).FadeoutScene(false)
	;Fading()
	(BaboSexController as BaboSexControllerManager).SexCustomActor(Victim, Rapist, None, None, None, "Aggressive", "Vaginal", "", True, "BABO_TRINewChiefRapeAfter", "TRINewChiefRapeAfter", true)
	;SexLab.StartSex(sexActors, anims, victim=sexActors[0], hook="NewChiefRapeAfter")
EndFunction

Function AfterNewChiefRape()
	SexCountNewRiekling.SetValue(SexCountNewRiekling.GetValue() + 1)
	self.Fadeout(RieklingChallenger.getreference() as actor)
EndFunction

Function EquipRestraints()
	PlayerReference.Additem(Yoke, 1, true)
	PlayerReference.Additem(AnkleChain, 1, true)
	PlayerReference.EquipItem(Yoke, true, true)
	PlayerReference.EquipItem(AnkleChain, true, true)
EndFunction

Function UnEquipRestraints()
	PlayerReference.UnequipItem(Yoke, true, true)
	PlayerReference.UnequipItem(AnkleChain, true, true)
	BaboEventRieklingDefeatNum.setvalue(BaboEventRieklingDefeatNum.getvalue() + 1)
EndFunction

Event RieklingThreeAfterT(string eventName, string argString, float argNum, form sender)

	SexCountRiekling.SetValue(SexCountRiekling.GetValue() + 3)

	Actor Actor01 = SexLab.HookActors(argString)[0]
	Actor Actor02 = SexLab.HookActors(argString)[1]
	Actor Actor03 = SexLab.HookActors(argString)[2]

	actor[] sexActors = new actor[3]
	sexActors[0] = Actor01
	sexActors[1] = Actor02
	sexActors[2] = Actor03

	sslBaseAnimation[] anims
	anims = SexLab.GetAnimationsByTag(3, "Riekling", "Aggressive", "Threesome", TagSuppress = "Femdom")
	(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(15)
	;debug.messagebox ("They angrily keep harrassing me... Please somebody.. help..")

	RegisterForModEvent("AnimationEnd_RieklingThreeAfter2", "RieklingThreeAfter2T")
	SexLab.StartSex(sexActors, anims, victim=sexActors[0], hook="RieklingThreeAfter2")
;	UnregisterForModEvent("AnimationEnd_RieklingThreeAfter")

EndEvent

Function RieklingThreeAfterSex()
	EquipRestraints()
	If BaboEventQuest.getstage() == 70
		BaboEventQuest.setstage(90)
	ElseIf  BaboEventQuest.getstage() == 100
		(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(16)
		;debug.messagebox ("When will this madness be over. My pussy hurts... I am not a meat slave...")
	EndIf
EndFunction



Function RegisterUpdate()
RegisterForSingleUpdateGameTime(48.0); this is two days
EndFunction

Event OnUpdateGameTime()
	CrossedRopeWoodRef.disable()
	(RieklingChallenger.getreference() as actor).delete()
	(RieklingMinion01.getreference() as actor).delete()
	RieklingChallenger.Clear()
	RieklingMinion01.Clear()
	Utility.Wait(0.1)
	SexCountRiekling.SetValue(0)
	BaboEventQuest.Reset()
	BaboEventQuest.SetStage(10)
EndEvent

Function BacktoThirsk(Referencealias SpeakerRef)

	Actor Speaker = SpeakerRef.getactorreference()
	(BaboSexController as BaboSexControllerManager).LosingControl()
	;Game.DisablePlayerControls(true, true, true, false, true, false, true, false)
	;Game.SetPlayerAIDriven(true)
	
	Fading()

	Utility.Wait(2.0)
	
	Game.getplayer().moveto(BaboEventRieklingChiefMarker01)
	Speaker.moveto(BaboEventRieklingChiefMarker02)
	BaboEventThirskDoor.Setlocklevel(75)
	BaboEventThirskDoor.lock()

	Utility.Wait(3.0)
	(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(10)
	(BaboSexController as BaboSexControllerManager).RecoverControl(false)
	;Game.EnablePlayerControls()
	;Game.SetPlayerAIDriven(false)

EndFunction

Function Fading()

	FadeToBlackImod.Apply()
	utility.wait(2)
	FadeToBlackImod.PopTo(FadeToBlackHoldImod)
	utility.wait(2)
	FadeToBlackImod.PopTo(FadeToBlackHoldImod)
	FadeToBlackHoldImod.Remove()

EndFunction
;===================================== This is property zone ========================================
;===================================== This is property zone ========================================


SexLabFramework Property SexLab Auto
Quest Property BaboEventQuest Auto
Quest Property BaboSexController Auto

GlobalVariable Property SexCountRiekling Auto;BaboSexCountRieklingQuest
GlobalVariable Property SexCountNewRiekling Auto
GlobalVariable Property BaboEventRieklingSexOnOff Auto

Actorbase property SpawnRiekling auto
Actorbase property SpawnRieklingW01 auto

ReferenceAlias Property RieklingChallenger Auto
ReferenceAlias Property RieklingMinion01 Auto
ReferenceAlias Property RieklingMinion02 Auto
ReferenceAlias Property RieklingMinion03 Auto
ReferenceAlias[] Property RieklingWarriors Auto
ReferenceAlias Property PlayerAlias Auto

ObjectReference property BaboEventRieklingEntranceMarker auto

ObjectReference property BaboEventRieklingMarker01 auto
ObjectReference property BaboEventRieklingBackRoomMarker auto
ObjectReference property BaboEventRieklingFrontMarker auto
ObjectReference property BaboEventRieklingMinionMarker01 auto
ObjectReference property BaboEventRieklingMinionMarker02 auto
ObjectReference property BaboEventRieklingMinionMarker03 auto
ObjectReference property CrossedRopeWoodRef auto
ObjectReference Property BaboEventRieklingConfiscatedChestRef Auto

Faction Property BaboPlayerSurrenderFaction Auto
Actor Property PlayerReference Auto

Scene Property BaboEventRieklingThirskScene01 Auto
Scene Property BaboEventRieklingThirskScene02 Auto

Package Property ForceGreet01 Auto
Package Property ForceGreet02 Auto

GlobalVariable Property GameHour Auto
GlobalVariable Property BaboEventRieklingDefeatNum Auto

ImageSpaceModifier Property FadeToBlackImod  Auto  
ImageSpaceModifier Property FadeToBlackHoldImod  Auto  
ImageSpaceModifier Property FadeToBlackBackImod  Auto  

Armor property Yoke auto
Armor property AnkleChain auto

ObjectReference property BaboEventRieklingChiefMarker01 Auto
ObjectReference property BaboEventRieklingChiefMarker02 Auto
ObjectReference property BaboEventThirskDoor Auto

ObjectReference property BaboDia_RieklingCrossCruxRef Auto
ObjectReference property BaboEventRieklingGodspeakDanceEnabler Auto
ObjectReference property BaboEventRieklingGodspeakDanceDisabler Auto
ObjectReference property BaboEventRieklingDuelPlayer Auto
ObjectReference property BaboEventRieklingPlayerMarker Auto

Message Property BaboBrawlingSurrenderMsg Auto