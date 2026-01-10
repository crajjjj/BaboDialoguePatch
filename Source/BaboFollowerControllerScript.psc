Scriptname BaboFollowerControllerScript extends Quest  

Package Property DoNothing Auto

Referencealias property CurrentFollower01 Auto
Referencealias property CurrentFollower02 Auto
Referencealias property CurrentFollower03 Auto
Referencealias property CurrentFollower04 Auto
Referencealias property CurrentFollower05 Auto
Referencealias property CurrentFollower06 Auto
ReferenceAlias[] Property CurrentFollowerArray Auto

Actor[] Property FollowerActors Auto hidden

Referencealias property PotentialFollower01 Auto
Referencealias property PotentialFollower02 Auto
Referencealias property PotentialFollower03 Auto
Referencealias property PotentialFollower04 Auto
Referencealias property PotentialFollower05 Auto
Referencealias property PotentialFollower06 Auto
ReferenceAlias[] Property PotentialFollowerArray Auto

Spell Property BaboCalmSpell Auto

Faction Property dunPrisonerFaction Auto
Faction Property BaboDialogueFriendFaction Auto

Idle[] Property RestrainIdles Auto
Armor Property BaboGagLogBitNPC Auto
Armor Property BaboWristRope01 Auto

;(BaboFollowerController as BaboFollowerControllerScript).DetectFollowers() - When the fight starts
;(BaboFollowerController as BaboFollowerControllerScript).PacifyAllFollowers()  - When you are defeated
;(BaboFollowerController as BaboFollowerControllerScript).TieUpFollowers(true) - While you are being harrassed
;(BaboFollowerController as BaboFollowerControllerScript).ClearAllAliases() - When the quest is stopped

Bool Property IsTieup = false Auto

Function DetectFollowers()
	Start()
	;UnregisterForUpdateGameTime()
EndFunction

int Function PacifyAllFollowers()
	Int actorCount = 0
	Actor CurrentFollower
	Int ii = 0
	if CurrentFollowerArray == None
		return actorCount
	endIf
	Int count = CurrentFollowerArray.Length
	While ii < count
		CurrentFollower = CurrentFollowerArray[ii].GetReference() as Actor
		If CurrentFollower != None
			Self.PacifyFollowers(CurrentFollower, true, true)
			actorCount += 1
		EndIf
		ii += 1
	EndWhile
	RegisterForSingleUpdateGameTime(24)
	Return actorCount
EndFunction

Event OnUpdateGameTime()
	ClearAllAliases()
EndEvent

Function ClearAllAliases()
	if IsTieup
		TieUpFollowers(false)
	endif
		if PotentialFollower01
			PacifyFollowers(PotentialFollower01.getreference() as actor, true, false)
		endIf
		if PotentialFollower02
			PacifyFollowers(PotentialFollower02.getreference() as actor, true, false)
		endIf
		if PotentialFollower03
			PacifyFollowers(PotentialFollower03.getreference() as actor, true, false)
		endIf
		if PotentialFollower04
			PacifyFollowers(PotentialFollower04.getreference() as actor, true, false)
		endIf
		if PotentialFollower05
			PacifyFollowers(PotentialFollower05.getreference() as actor, true, false)
		endIf
		if PotentialFollower06
			PacifyFollowers(PotentialFollower06.getreference() as actor, true, false)
		endIf
		
		PotentialFollower01.clear()
		PotentialFollower02.clear()
		PotentialFollower03.clear()
		PotentialFollower04.clear()
		PotentialFollower05.clear()
		PotentialFollower06.clear()

	UnregisterForUpdateGameTime()
	
	stop()
EndFunction

Bool Function PacifyFollowers(actor Target, Bool StayPut = True, Bool Enter = True)

	If Enter
		If !Target.IsInFaction(dunPrisonerFaction) && !Target.IsInFaction(BaboDialogueFriendFaction)
			Target.AddSpell(BaboCalmSpell)
			Target.AddToFaction(dunPrisonerFaction)
			Target.AddToFaction(BaboDialogueFriendFaction)
			Target.StopCombat()
			Target.StopCombatAlarm()
			If StayPut
				ActorUtil.AddPackageOverride(Target, DoNothing, 100, 1)
				Target.EvaluatePackage()
				TieUp(Target, true)
			Endif
			Return True
		Else
			Target.StopCombatAlarm()
		Endif
	Else
		If Target.isinfaction(BaboDialogueFriendFaction)
			Target.RemoveFromFaction(dunPrisonerFaction)
			Target.RemoveFromFaction(BaboDialogueFriendFaction)
			If StayPut
				ActorUtil.RemovePackageOverride(Target, DoNothing)
				Target.EvaluatePackage()
				TieUp(Target, false)
			Endif
			Target.RemoveSpell(BaboCalmSpell)
			Return True
		Endif
	Endif
	Return False
EndFunction

Function TieUp(actor akactor, Bool Enter = true)

if Enter
	akactor.additem(BaboGagLogBitNPC, 1, true)
	akactor.additem(BaboWristRope01, 1, true)
	akactor.equipitem(BaboGagLogBitNPC, true, false)
	akactor.equipitem(BaboWristRope01, true, false)

	akactor.SetRestrained()
	akactor.SetDontMove(True)
	if RestrainIdles != None && RestrainIdles.Length > 0
		int i = Utility.randomint(0, RestrainIdles.Length - 1)
		akactor.playidle(RestrainIdles[i])
	endIf
Else
	akactor.unequipitem(BaboGagLogBitNPC)
	akactor.unequipitem(BaboWristRope01)
	akactor.removeitem(BaboGagLogBitNPC, 1)
	akactor.removeitem(BaboWristRope01, 1)

	akactor.SetRestrained(false)
	akactor.SetDontMove(false)
	Debug.SendAnimationEvent(akactor, "IdleForceDefaultState")
Endif
	
EndFunction

Function TieUpFollowers(Bool Tie = true)
	Int ii = 0
	Actor CurrentFollower
	if CurrentFollowerArray == None
		return
	endIf
	Int count = CurrentFollowerArray.Length
if Tie
	While ii < count
		CurrentFollower = CurrentFollowerArray[ii].GetReference() as Actor
		if CurrentFollower
			Self.TieUp(CurrentFollower, true)
		endif
		ii += 1
	EndWhile
	IsTieup = true
Else
	While ii < count
		CurrentFollower = CurrentFollowerArray[ii].GetReference() as Actor
		if CurrentFollower
			If CurrentFollower.isinfaction(BaboDialogueFriendFaction)
				CurrentFollower.RemoveFromFaction(dunPrisonerFaction)
				CurrentFollower.RemoveFromFaction(BaboDialogueFriendFaction)
				ActorUtil.RemovePackageOverride(CurrentFollower, DoNothing)
				CurrentFollower.EvaluatePackage()
				CurrentFollower.RemoveSpell(BaboCalmSpell)
			Endif	
			Self.TieUp(CurrentFollower, false)
		endif

		ii += 1
	EndWhile
	IsTieup = false
	Reset()
	Stop()
Endif
endfunction
