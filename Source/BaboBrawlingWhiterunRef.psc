Scriptname BaboBrawlingWhiterunRef extends ReferenceAlias  


Event OnInit()
if SetEssentialNPC
	Actor selfActorRef = GetActorReference()
	if selfActorRef != None
		selfActorRef.GetActorBase().SetEssential(true)
	endif
endif
	;###############SE#################
	If OnHitSwitch
		Actor playerRef = Game.GetPlayer()
		if playerRef != None
			PO3_Events_Alias.RegisterForHitEventEx(self, playerRef, None, None, -1, -1, -1, -1, true)
		endif
	endif
	;###############SE#################
EndEvent

Event OnHitEx(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack,  bool abBashAttack, bool abHitBlocked)
	If GetOwningQuest().GetStage() < FirstStage
		GetOwningQuest().SetStage(FirstStage)
		PO3_Events_Alias.UnregisterForAllHitEventsEx(self)
	EndIf
EndEvent

Event OnEnterBleedout()
	if BaboQuest == None
		return
	endif
	Deathcount = BaboQuest.DeathCountNum
	DeathcountGoal = BaboQuest.DeathCountGoalNum
	Faintcount = BaboQuest.FaintCountNum 
	FaintcountGoal = BaboQuest.FaintCountGoalNum

	If BleedOutSwitch
		If GetOwningQuest().GetStage() == FirstStage
			; this actor just lost
			;GetActorReference().GetActorBase().SetEssential(true)
			Utility.wait(0.5)
			Actor selfActorRef = GetActorReference()
			if selfActorRef == None
				return
			endif
			selfActorRef.SetUnconscious(true)
			selfActorRef.PushActorAway(selfActorRef, 1)
			If FaintSwitch
				BaboQuest.FaintCount()
				;Debug.notification(BaboQuest.FaintCount() + "added")
			EndIF
		ElseIf GetOwningQuest().GetStage() != FirstStage || Deathcount == DeathCountGoal
			; this actor not just lost but die
			Actor selfActorRef = GetActorReference()
			if selfActorRef == None
				return
			endif
			selfActorRef.SetUnconscious(false)
			selfActorRef.GetActorBase().SetEssential(false)
		EndIf
	EndIf
EndEvent

Event OnDeath(Actor akKiller)
	if BaboQuest == None || BSCM == None
		return
	endif
	If DeathSwitch
		BaboQuest.DeathCount()
		BSCM.CorruptionExpLoss(1.0)
		BSCM.TraumaExpLoss(1.0)
	EndIf
EndEvent

Bool Property SetEssentialNPC  = false Auto
Bool Property OnHitSwitch  = false Auto
Bool Property DeathSwitch  = false Auto
Bool Property FaintSwitch  = false Auto
Bool Property BleedOutSwitch  = false Auto
Int DeathCount
Int FaintCount
Int Property FirstStage Auto
Int DeathCountGoal
Int FaintCountGoal
BaboDialogueWhiterunScript Property BaboQuest  Auto
BaboSexControllerManager Property BSCM Auto
