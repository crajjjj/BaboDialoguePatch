Scriptname BaboRieklingThirskDuelRefScript extends ReferenceAlias  


Idle property Knockout auto
Idle property Knockout02 auto
Int Property StartStage auto
Int Property StartStage02 auto
Int Property NextStage01 auto
Int Property LastStage auto
bool Property RotatedAnimationFixEnabled = false Auto Hidden
Function ResetThirdPersonCamera() Native Global

Scene Property NextScene01 Auto
Scene Property NextScene02 Auto

Bool Property EssentialAtStart = true Auto
Bool Property NexStage01Switch Auto
Bool Property NextScene01Switch Auto

Bool Property BleedOutMechanism = False Auto
Bool Property HitMechanism = False Auto

Bool Property FoeSwitch = false Auto
Bool Property BacktoNormal = false Auto

Bool Property Yeskeyword = false Auto
Bool Property InitialEssential = true Auto
{This toggle needs to be set if you want to designate a certain enemy type with keywords.}

Referencealias property Foe01 Auto
Referencealias property PlayerRefrence Auto

GlobalVariable Property BaboCombatWoundPercentMaximum Auto
GlobalVariable Property BaboCombatWoundPercentMinimum Auto

GlobalVariable Property BaboCombatEssentialSwitch Auto

Quest Property BaboSetEssentialScript Auto
Referencealias Property PlayerEssential Auto

Keyword Property BaboStripper  Auto  

Idle Property staggerStart  Auto  

Float MaximumCriterion
Float MinimumCriterion
Float CurrentHealth
Float BaseHealth
Float playersHealth

Actor LastAggressor

Message Property BaboBrawlingDefeatedMsg Auto
Message Property BaboBrawlingDefeatedStandUpMsg Auto

Event OnInit()
	if InitialEssential
		CheckEssential();Temporary
	endif
	
	;###############SE#################
	ObjectReference foeRef = Foe01.getreference()
	if foeRef != None
		PO3_Events_Alias.RegisterForHitEventEx(self, foeRef, None, None, -1, -1, -1, -1, true)
	endif
	;###############SE#################
EndEvent

Event OnHitEx(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)

EndEvent

Function CheckEssential()

	if BaboCombatWoundPercentMaximum == None || BaboCombatWoundPercentMinimum == None || BaboCombatEssentialSwitch == None
		return
	endif
	MaximumCriterion = BaboCombatWoundPercentMaximum.getvalue()
	MinimumCriterion = BaboCombatWoundPercentMinimum.getvalue()

	If BaboCombatEssentialSwitch.getvalue() == 1
		if EssentialAtStart
			if PlayerEssential != None
				PlayerEssential.forcerefto((Self.getreference() as actor))
			endif
		endif
		gotostate("YesEssential")
	else
		gotostate("NoEssential")
	endif
EndFunction

Function ClearEssential()
	if PlayerEssential != None
		PlayerEssential.clear()
	endif
EndFunction

Function RegisterOnHitExExtra(form akfilter)
	if akfilter != None
		PO3_Events_Alias.RegisterForHitEventEx(self, akfilter, None, None, -1, -1, -1, -1, true)
	endif
EndFunction

Function Defeated()
	Actor playerActorRef = (Self.getreference() as actor)
	if playerActorRef == None
		return
	endif
	BaboBrawlingDefeatedMsg.show()
	Game.ForceThirdPerson()
	playerActorRef.RestoreActorValue("health", 100)
	Game.DisablePlayerControls(abmenu =true)
	Utility.Wait(0.5)
	playerActorRef.PlayIdle(Knockout)

		If NexStage01Switch == True
			Self.GetOwningQuest().SetStage(NextStage01)
		EndIf

		If  NextScene01Switch == True
			NextScene01.Start()
		EndIf

		If BacktoNormal
			Utility.Wait(5.0)
			Game.EnablePlayerControls(abmenu =true)
		endif
	PO3_Events_Alias.UnregisterForAllHitEventsEx(self);SE
EndFunction

Function DamageCalculation(ObjectReference akAggressor)

	If GetOwningQuest().GetStage() == StartStage || GetOwningQuest().GetStage() == StartStage02
		if akAggressor == None
			return
		endif
		bool isStripper = false
		if BaboStripper != None
			isStripper = akAggressor.haskeyword(BaboStripper)
		endif
		If isStripper || Yeskeyword == False
			Actor foeActorRef = (Foe01.getref() as actor)
			If	FoeSwitch == False || (foeActorRef != None && foeActorRef.isdead() == False)
				Defeated()
			Else
				;Now you can die
				BaboBrawlingDefeatedStandUpMsg.show()
				Game.ForceThirdPerson()
				Actor playerActorRef = (Self.getreference() as actor)
				if playerActorRef == None
					return
				endif
				playerActorRef.RestoreActorValue("health", 10)
				Game.DisablePlayerControls(abmenu =true)
				Utility.Wait(0.5)
				playerActorRef.PlayIdle(Knockout02)
				Utility.Wait(5.0)
				playerActorRef.RestoreActorValue("health", 5)
				Game.EnablePlayerControls(abmenu =true)
				playerActorRef.PlayIdle(StaggerStart)
			EndIf
		EndIf
	EndIf

EndFunction

state NoEssential

Event Onbeginstate()

EndEvent


Function CheckEssential()

EndFunction

;###############LE#################
;Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
;###############LE#################

;###############SE#################
Event OnHitEx(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
;###############SE#################

Actor playerActorRef = (Self.getreference() as actor)
if playerActorRef == None
	return
endif
CurrentHealth = playerActorRef.GetActorValue("health")
BaseHealth = playerActorRef.GetBaseActorValue("health")
if BaseHealth <= 0
	return
endif
playersHealth = (CurrentHealth / BaseHealth) * 100

If PlayersHealth < 0
PlayersHealth = 0
EndIf

	If ((playersHealth <= MaximumCriterion) && (playersHealth >= MinimumCriterion))
		;if akAggressor;LE
			DamageCalculation(akAggressor)
		;endif
	Elseif playersHealth <= 0
		;if akAggressor;LE
			DamageCalculation(akAggressor)
		;endif	

	EndIf
EndEvent

Event OnEnterBleedOut()

EndEvent

endstate

State YesEssential

Event Onbeginstate()
	if Foe01 != None
		LastAggressor = Foe01.getreference() as actor
	endif
EndEvent

Function CheckEssential()

EndFunction

;###############LE#################
;Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
;###############LE#################

;###############SE#################
Event OnHitEx(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
;###############SE#################

;if akAggressor ; LE
	LastAggressor = akAggressor as actor
;endif

EndEvent

Event OnEnterBleedOut()
	DamageCalculation(LastAggressor)
EndEvent

Endstate
