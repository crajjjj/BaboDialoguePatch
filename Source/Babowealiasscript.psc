Scriptname Babowealiasscript extends ReferenceAlias  


bool Property RegisterLoadingAndUnloading = true auto
{Default = TRUE; causes the quest to keep running if loaded, and stop if all similarly flagged aliases unload.}

int Property StopRegisteringUnloadingIfStageHasBeenSet = -1 Auto
{Default = -1 (doesn't matter); don't register unloading if this quest stage}

bool Property PacifyOnLoad = False Auto
{Default = FALSE: Should this alias be made unagressive when he loads?}

bool Property MakeAggressiveAndAttackPlayerIfAttacked = False Auto
{Default = FALSE: Should this alias be made an enemy and set his aggression to very aggressive if he's attacked by the player?}

bool Property MakeAggressiveOnGainLOSToPlayer = false Auto
{Default = FALSE: Should this alias be made an enemy and set his aggression to very aggressive if he sees the player?}

float Property MakeAggressiveOnDistanceToPlayer = 0.0 Auto
{Default = -1, off: Postive value means when the player gets this close the actor should become aggressive. Note: there is a short delay, this is not instantaneous}

bool Property InitiallyDisabled = false Auto
{Default = FALSE: should this alias disable when it loads the first time}
bool disabledOnce

bool Property DisableOnUnload = false Auto
{Default = FALSE: Should this alias disable itself when it unloads}

bool Property KillOnLoad = false Auto
{Default = FALSE: Should this alias kill itself when it loads}

bool Property DisintegrateOnLoad = false Auto
{Default = FALSE: Should this alias kill and disintegrate itself when it loads}

Faction Property PutInThisFactionOnLoad Auto
{Optional: Put alias into this faction on load. Useful for setting up a faction that hates itself if you want to pacify things and yet make them attack each other.}

Activator property DefaultAshPile1 Auto
{The ash pile to use when disintegrating this actor.}

bool attached	;My cell has attached or I moved into an attached cell   (OR - rare/impossible: tried to detach before ever trying to attach)
bool detached	;My cell has detached or I moved into a detached cell   (OR - rare/impossible: tried to detach before ever trying to attach)


int property RequiredStage Auto
bool property RequireStage Auto

Event OnUpdate()

	if MakeAggressiveOnDistanceToPlayer > 0
	
		ObjectReference selfRef = GetReference()
		Actor playerRef = Game.GetPlayer()
		if selfRef == None || playerRef == None
			return
		endif
		if selfRef.GetDistance(playerRef) < MakeAggressiveOnDistanceToPlayer
; 			;debug.trace(self + "OnUpdate() player is within MakeAggressiveOnDistanceToPlayer [ " + MakeAggressiveOnDistanceToPlayer + "], making aggressive to player.")
			WEScript weQuest = (GetOwningQuest() as WEScript)
			if weQuest != None
				weQuest.makeAliasAggressiveAndAttackPlayer(self)
			endif
		Else
	
; 			;debug.trace(self + "OnUpdate() player isn't close enough, so calling RegisterForSingleUpdate(1) to poll again later.")
			RegisterForSingleUpdate(1)
		EndIf
		
	EndIf


EndEvent


Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
	if MakeAggressiveAndAttackPlayerIfAttacked && akAggressor == Game.GetPlayer()
		WEScript weQuest = (GetOwningQuest() as WEScript)
		if weQuest != None
			weQuest.makeAliasAggressiveAndAttackPlayer(self)
		endif
	
	EndIf

EndEvent

Event OnGainLOS(Actor akViewer, ObjectReference akTarget)
	if MakeAggressiveOnGainLOSToPlayer && akViewer == GetActorReference() && akTarget == Game.GetPlayer() as Actor
		WEScript weQuest = (GetOwningQuest() as WEScript)
		if weQuest != None
			weQuest.makeAliasAggressiveAndAttackPlayer(self)
		endif
	EndIf
EndEvent

Event OnCellAttach()
	TryToAttach()
EndEvent

Event OnAttachedToCell()
	TryToAttach()
EndEvent

Event OnCellDetach()
	TryToDetach()
EndEvent

Event OnDetachedFromCell()
	TryToDetach()
EndEvent


Event OnLoad()
	TryToAttach()
	Actor selfActorRef = GetActorReference()

	if InitiallyDisabled && DisabledOnce == False
; 		;debug.trace(self + "OnLoad() calling TryToDisable()")
		DisabledOnce = True
		TryToDisable()
	EndIf

	if MakeAggressiveOnGainLOSToPlayer
; 		;debug.trace(self + "OnLoad() calling RegisterForSingleLOSGain(GetActorReference(), Game.GetPlayer() as Actor)")
		if selfActorRef != None
			RegisterForSingleLOSGain(selfActorRef, Game.GetPlayer() as Actor)
		endif
	
	EndIf

	if MakeAggressiveOnDistanceToPlayer > 0
; 		;debug.trace(self + "OnLoad() calling RegisterForSingleUpdate(1)")
		RegisterForSingleUpdate(1)
	EndIf
		
	if PacifyOnLoad
		WEScript weQuest = (GetOwningQuest() as WEScript)
		if weQuest != None
			weQuest.pacifyAlias(self)
		endif
	EndIf

	if PutInThisFactionOnLoad && selfActorRef != None
		selfActorRef.AddToFaction(PutInThisFactionOnLoad)
	EndIf
	
	if (KillOnLoad || DisintegrateOnLoad) && selfActorRef != None
		selfActorRef.kill()
	EndIf
	
; 	;debug.trace(self + "OnLoad()")
	
EndEvent

Event OnDying(Actor akKiller)
	if (DisintegrateOnLoad)
		Actor selfActorRef = GetActorReference()
		if selfActorRef == None
			return
		endif
		selfActorRef.SetAlpha(0, False)
		selfActorRef.SetCriticalStage(selfActorRef.CritStage_DisintegrateEnd)
		if DefaultAshPile1 != None
			selfActorRef.AttachAshPile(DefaultAshPile1)
		endif
		Utility.Wait(1.65)
		selfActorRef.SetCriticalStage(selfActorRef.CritStage_DisintegrateEnd)
	EndIf
EndEvent

Event OnUnload()
	if RequireStage
		if DisableOnUnload && GetOwningQuest() != None && GetOwningQuest().getstage() <= RequiredStage
	; 		;debug.trace(self + "OnUnload() calling Disable()")
			TryToDetach()
			ObjectReference selfRef = GetReference()
			if selfRef != None
				selfRef.Disable()
			endif
		EndIf
	endif
EndEvent

;*** DON'T TRACE IN HERE BEFORE SETTING THE ATTACH/DETACHED VARS - for thread safety
Function TryToAttach()
	if attached || detached    ;If we have already detached or attached before
		;do nothing
		Return
		
	Else ;We haven detached or attached before
		Attached  = true
		
		;*** increment and do stuff here
		if RegisterLoadingAndUnloading 
; 			;debug.trace(self + "OnLoad() calling AliasLoadingOrUnloading(IsLoading = True)")
			WEScript weQuest = (GetOwningQuest() as WEScript)
			if weQuest != None
				weQuest.AliasLoadingOrUnloading(IsLoading = True)
			endif
		EndIf
		
	Endif

	
EndFunction

;*** DON'T TRACE IN HERE BEFORE SETTING THE ATTACH/DETACHED VARS - for thread safety
Function TryToDetach()
	If detached
		;do nothing
		Return
	Elseif attached ; we haven detached AND we have attached ?clean up
		Detached = true
		
		;*** decrement and do stuff here
		if RegisterLoadingAndUnloading
			if StopRegisteringUnloadingIfStageHasBeenSet != -1 && GetOwningQuest().GetStageDone(StopRegisteringUnloadingIfStageHasBeenSet) == True
; 				debug.trace(self + "WEAliasScript Not unregistering this reference because stage has been set: " + StopRegisteringUnloadingIfStageHasBeenSet)
			Else		
; 				;debug.trace(self + "OnUnload() calling AliasLoadingOrUnloading(IsLoading = False)")
				WEScript weQuest = (GetOwningQuest() as WEScript)
				if weQuest != None
					weQuest.AliasLoadingOrUnloading(IsLoading = False)
				endif
			EndIf
		EndIf
		
	Else 
		Detached = true
		Attached = true
		
		;*** tell quest to clean up if everyone else is gone ?but do NOT decrement, because we never incremented
		WEScript weQuest = (GetOwningQuest() as WEScript)
		if weQuest != None
			weQuest.RegisterForStopQuest()
		endif
		
	Endif

EndFunction
