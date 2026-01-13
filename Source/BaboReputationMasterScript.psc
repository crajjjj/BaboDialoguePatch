Scriptname BaboReputationMasterScript extends Quest Conditional

;\\\\\\\\\\\\\\\\
;\\\Property Zone\\\\\\\
;\\\\\\\\\\\\\\\\

BaboDiaMonitorScript Property BDMScript Auto

Referencealias Property RefPlayerRef Auto
Actor Property PlayerRef Auto
Referencealias Property BaboChangeLocationEvent05Visitor Auto

Quest Property BaboEncounter01 Auto
Quest Property BaboEncounter02 Auto
Quest Property BaboChangeLocationEvent02 Auto
Quest Property BaboChangeLocationEvent02ForestSnow Auto
Quest Property BaboChangeLocationEvent02Forest Auto
Quest Property BaboChangeLocationEvent02Coast Auto
Quest Property BaboChangeLocationEvent02Marsh Auto
Quest Property BaboChangeLocationEvent02Mountain Auto
Quest Property BaboChangeLocationEvent02MountainSnow Auto
Quest Property BaboChangeLocationEvent02Plain Auto
Quest Property BaboChangeLocationEvent02PlainSnow Auto
Quest Property BaboChangeLocationEvent05 Auto
Quest Property BaboChangeLocationEvent06 Auto
Quest Property BaboChangeLocationEvent08 Auto
Quest Property BaboDialogueWhiterun Auto
Quest Property BaboDialogueHirelings Auto
BaboBoyFriendVariableScript Property BoyFriendVariableScript Auto
Referencealias Property ViceCaptainRef Auto

GlobalVariable Property BaboMonitorScriptCreaturePackageActive auto
GlobalVariable Property SexCountGangBang auto
GlobalVariable Property SexCount auto
GlobalVariable Property BaboSpendableFavor auto
GlobalVariable Property BaboReputation auto
GlobalVariable Property BaboReputationRieklingThirsk auto
GlobalVariable Property BaboReputationCreatureSex auto
GlobalVariable Property BaboReputationBitch auto
GlobalVariable Property BaboPlayerFondofSexyArmorCycleValue Auto

Faction Property RankAdventurer Auto Conditional ;0x0246D9
Faction property RankBadPrisioner Auto Conditional;0x02E8E4
Faction property RankBeggar Auto Conditional ;0x0246D6
Faction property RankBodyGuard Auto Conditional;0x0297DD
Faction property RankBountyHunter Auto Conditional;0x0297DE
Faction property RankHunter Auto Conditional;0x0246DA
Faction property RankKnight Auto Conditional;0x0297E1
Faction property RankLowCitizen Auto Conditional;0x0246D5
Faction property RankMercenary Auto Conditional;0x0297DF
Faction property RankMerchant Auto Conditional;0x0297E0
Faction property RankMiddleCitizen Auto Conditional;0x0246D7
Faction property RankNoble Auto Conditional;0x0246D8
Faction property RankRefugee Auto Conditional;0x0125E9
Faction property RankPilgrim Auto Conditional;0x0246DB

Faction property BaboCurrentHireling Auto
Faction property BaboCurrentAnimalHireling Auto
Faction property BaboCreatureArousedFaction Auto
Faction property BaboCreatureMatePartnerFaction Auto

Faction property BaboChangeLocationEvent06Faction Auto
Faction property BaboEncounter01Faction Auto
Faction property BaboEncounter02Faction Auto
Faction property BaboChangeLocationEvent08Faction Auto
Faction Property SLAX_NudismAddictFaction Auto


Bool Function RegisterFactionPopulatedSkyrim()
	If Game.GetModByName("Populated Skyrim Legendary.esp") != 255
		bool allValid = true
		Faction factionRef

		factionRef = Game.GetFormFromFile(0x000246D9, "Populated Skyrim Legendary.esp") as Faction
		if factionRef != None
			RankAdventurer = factionRef
		else
			allValid = false
		endif

		factionRef = Game.GetFormFromFile(0x0002E8E4, "Populated Skyrim Legendary.esp") as Faction
		if factionRef != None
			RankBadPrisioner = factionRef
		else
			allValid = false
		endif

		factionRef = Game.GetFormFromFile(0x000246D6, "Populated Skyrim Legendary.esp") as Faction
		if factionRef != None
			RankBeggar = factionRef
		else
			allValid = false
		endif

		factionRef = Game.GetFormFromFile(0x000297DD, "Populated Skyrim Legendary.esp") as Faction
		if factionRef != None
			RankBodyGuard = factionRef
		else
			allValid = false
		endif

		factionRef = Game.GetFormFromFile(0x000297DE, "Populated Skyrim Legendary.esp") as Faction
		if factionRef != None
			RankBountyHunter = factionRef
		else
			allValid = false
		endif

		factionRef = Game.GetFormFromFile(0x000246DA, "Populated Skyrim Legendary.esp") as Faction
		if factionRef != None
			RankHunter = factionRef
		else
			allValid = false
		endif

		factionRef = Game.GetFormFromFile(0x000297E1, "Populated Skyrim Legendary.esp") as Faction
		if factionRef != None
			RankKnight = factionRef
		else
			allValid = false
		endif

		factionRef = Game.GetFormFromFile(0x000246D5, "Populated Skyrim Legendary.esp") as Faction
		if factionRef != None
			RankLowCitizen = factionRef
		else
			allValid = false
		endif

		factionRef = Game.GetFormFromFile(0x000297DF, "Populated Skyrim Legendary.esp") as Faction
		if factionRef != None
			RankMercenary = factionRef
		else
			allValid = false
		endif

		factionRef = Game.GetFormFromFile(0x000297E0, "Populated Skyrim Legendary.esp") as Faction
		if factionRef != None
			RankMerchant = factionRef
		else
			allValid = false
		endif

		factionRef = Game.GetFormFromFile(0x000246D7, "Populated Skyrim Legendary.esp") as Faction
		if factionRef != None
			RankMiddleCitizen = factionRef
		else
			allValid = false
		endif

		factionRef = Game.GetFormFromFile(0x000246D8, "Populated Skyrim Legendary.esp") as Faction
		if factionRef != None
			RankNoble = factionRef
		else
			allValid = false
		endif

		factionRef = Game.GetFormFromFile(0x000125E9, "Populated Skyrim Legendary.esp") as Faction
		if factionRef != None
			RankRefugee = factionRef
		else
			allValid = false
		endif

		factionRef = Game.GetFormFromFile(0x000246DB, "Populated Skyrim Legendary.esp") as Faction
		if factionRef != None
			RankPilgrim = factionRef
		else
			allValid = false
		endif

		Return allValid
	Else
		Return False
	EndIf
EndFunction
;\\\\\\\\\\\\\\\\
;\\\Event Zone\\\\\\\
;\\\\\\\\\\\\\\\\

Event PutSexCountEvent()
	SexCount(1)
	Debug.Trace("SexCount + 1")
EndEvent

Event PutSexGangBangCountEvent()
	SexCountgangbang(1)
	Debug.Trace("SexGangBangCount + 1")
EndEvent

Event CorruptionGainEvent()
	if BDMScript != None
		BDMScript.CalcCorruptionExpGain(1.0)
	endif
EndEvent

Event CorruptionLossEvent()
	if BDMScript != None
		BDMScript.CalcCorruptionExpLoss(1.0)
	endif
EndEvent

Event RStatChangeEvent(float fstat, float ffavor)
	if BaboReputation != None
		BaboReputation.setvalue(BaboReputation.getvalue() + fstat)
	endif
	if BaboSpendableFavor != None
		BaboSpendableFavor.setvalue(BaboSpendableFavor.getvalue() + ffavor)
	endif
EndEvent

Event RRieklingStatChangeEvent(float fstat, float ffavor)
	if BaboReputationRieklingThirsk != None
		BaboReputationRieklingThirsk.setvalue(BaboReputationRieklingThirsk.getvalue() + fstat)
	endif
EndEvent

Function RBStatChangeEvent(Float fstat)
	if BaboReputationBitch != None
		BaboReputationBitch.setvalue(BaboReputationBitch.getvalue() + fstat)
	endif
EndFunction

;\\\\\\\\\\\\\\\\
;\\\Function Zone\\\\\\\
;\\\\\\\\\\\\\\\\


Function RegisterEvent()
	RegisterForModEvent("BaboDia_OnCorruptionLossEvent", "CorruptionLossEvent")
	RegisterForModEvent("BaboDia_OnCorruptionGainEvent", "CorruptionGainEvent")
	RegisterForModEvent("BaboDia_OnRStatChangeEvent", "RStatChangeEvent");reputation
	RegisterForModEvent("BaboDia_OnRRieklingStatChangeEvent", "RRieklingStatChangeEvent");reputation
	RegisterForModEvent("BaboDia_OnRBStatChangeEvent", "RBStatChangeEvent");bitch reputation
	RegisterForModEvent("BaboDia_OnPutSexCountEvent", "PutSexCountEvent")
	RegisterForModEvent("BaboDia_OnPutSexGangBangCountEvent", "PutSexGangBangCountEvent")
	RegisterExternalModEvent()
;	RegisterFactionPopulatedSkyrim()
	Debug.trace("BaboReputation Script Registering External Triggers")
EndFunction

Function CreatureSexReputation(Int BaboRepuetationNum)
	if BaboReputationCreatureSex != None
		BaboReputationCreatureSex.setvalue((BaboReputationCreatureSex.getvalue() as Int) + BaboRepuetationNum);WIP Maybe later I make a diary to give Player traits.
	endif
EndFunction

Function DecreaseReputation(Int BaboRepuetationNum, Int BaboFavorNum)
	if BaboReputation != None
		BaboReputation.setvalue((BaboReputation.getvalue() as Int) - BaboRepuetationNum)
	endif
	if BaboSpendableFavor != None
		float newFavor = BaboSpendableFavor.getvalue() - BaboFavorNum
		if newFavor < 0
			newFavor = 0
		endif
		BaboSpendableFavor.setvalue(newFavor)
	endif
EndFunction

Function ModifyReputationRatio(float ratio)
	if BaboReputation == None
		return
	endif
	float f = BaboReputation.getvalue()
	f = f * ratio
	BaboReputation.setvalue(f)
EndFunction

Function ModifyReputationBitchRatio(float ratio)
	if BaboReputationBitch == None
		return
	endif
	float f = BaboReputationBitch.getvalue()
	f = f * ratio
	BaboReputationBitch.setvalue(f)
EndFunction

Function DecreaseReputationBitch(Float BaboRepuetationNum)
	if BaboReputationBitch == None
		return
	endif
	BaboReputationBitch.setvalue((BaboReputationBitch.getvalue()) - BaboRepuetationNum)
	if BaboReputationBitch.getvalue() < 0
		BaboReputationBitch.setvalue(0)
	endif
EndFunction

Function IncreaseReputationRieklingThirsk(Int BaboRepuetationNum)
	if BaboReputationRieklingThirsk != None
		BaboReputationRieklingThirsk.setvalue(BaboReputationRieklingThirsk.getvalue() + BaboRepuetationNum as float)
	endif
EndFunction

Function IncreaseReputation(Int BaboRepuetationNum, Int BaboFavorNum)
	if BaboReputation != None
		BaboReputation.setvalue(BaboReputation.getvalue() + BaboRepuetationNum as float)
	endif
	if BaboSpendableFavor != None
		BaboSpendableFavor.setvalue(BaboSpendableFavor.getvalue() + BaboFavorNum as float)
	endif
EndFunction

Function IncreaseReputationBitch(Float BaboRepuetationNum)
	if BaboReputationBitch != None
		BaboReputationBitch.setvalue((BaboReputationBitch.getvalue()) + BaboRepuetationNum)
	endif
EndFunction

Function IncreaseReputationBitchbyExposure(Float BaboRepuetationNum)
	if BaboPlayerFondofSexyArmorCycleValue != None
		BaboPlayerFondofSexyArmorCycleValue.setvalue(BaboPlayerFondofSexyArmorCycleValue.getvalue() + BaboRepuetationNum)
	endif
	
	if BaboReputationBitch != None
		if BaboReputationBitch.getvalue() < 100.0
			BaboReputationBitch.setvalue((BaboReputationBitch.getvalue()) + BaboRepuetationNum)
		endif
	endif
	
	if BaboPlayerFondofSexyArmorCycleValue != None && PlayerRef != None && SLAX_NudismAddictFaction != None
		if BaboPlayerFondofSexyArmorCycleValue.getvalue() >= 100.0
			if PlayerRef.isinfaction(SLAX_NudismAddictFaction)
				PlayerRef.setfactionrank(SLAX_NudismAddictFaction, PlayerRef.getfactionrank(SLAX_NudismAddictFaction) + 1)
			else
				PlayerRef.addtofaction(SLAX_NudismAddictFaction)
			endif
			BaboPlayerFondofSexyArmorCycleValue.setvalue(0)
		endif
	endif
EndFunction

Function SpendFavor(Int BaboFavorNum)
	if BaboSpendableFavor == None
		return
	endif
	float newFavor = BaboSpendableFavor.getvalue() - BaboFavorNum as float
	if newFavor < 0
		newFavor = 0
	endif
	BaboSpendableFavor.setvalue(newFavor)
EndFunction

Function SexCount(Int Count)
	if SexCount != None
		SexCount.setvalue(SexCount.getvalue() + Count)
	endif
	if BDMScript != None
		BDMScript.CalcTraumaExpGain(Count)
	endif
EndFunction

Function SexCountgangbang(Int Count)
	if SexCountGangBang != None
		SexCountGangBang.setvalue(SexCountGangBang.getvalue() + Count)
	endif
	if BDMScript != None
		BDMScript.CalcTraumaExpGain(Count)
	endif
EndFunction

Function AddingTitletoPlayerRef(faction FTitle)
	if PlayerRef == None || FTitle == None
		return
	endif
	if PlayerRef.isinfaction(FTitle)
		PlayerRef.setfactionrank(FTitle, PlayerRef.getfactionrank(FTitle) + 1)
	else
		PlayerRef.Addtofaction(FTitle)
	endif
EndFunction

Function RemovingTitletoPlayerRef(faction FTitle)
	if PlayerRef == None || FTitle == None
		return
	endif
	PlayerRef.Removefromfaction(FTitle)
EndFunction

Function SetTitleGlobal(Globalvariable FGlobal, Int Num)
	if FGlobal == None
		return
	endif
	FGlobal.setvalue(FGlobal.getvalue() + Num)
Endfunction

;---------------------------SLAPP Related-----------------------------------

Function SLAPPAcquaintanceTrigger(Actor akSpeaker, Bool HadSex = false)
	int handle = ModEvent.Create("SLAPP_AcquaintanceEvent")
	form akspeakerform = akspeaker as form
	if (handle)
		ModEvent.PushForm(handle, akspeakerform)
		ModEvent.PushBool(handle, Hadsex)
		ModEvent.PushString(handle, "BaboDialogue activated SLAPPAcquaintanceEventEvent")
		ModEvent.Send(handle)
	endIf
EndFunction

Function SLAPPHateTrigger(Actor akSpeaker, Bool HadSex = false)
	int handle = ModEvent.Create("SLAPP_HateEvent")
	form akspeakerform = akspeaker as form
	if (handle)
		ModEvent.PushForm(handle, akspeakerform)
		ModEvent.PushBool(handle, Hadsex)
		ModEvent.PushString(handle, "BaboDialogue activated SLAPPHateEvent")
		ModEvent.Send(handle)
	endIf
EndFunction

Event BaboDialogueSLAPPConsequenceEvent(Actor Rapist, Bool RapeTry, string results)
	;Debug.notification(results)
	Debug.trace("BaboDialogueSLAPPConsequenceEvent Started")
	ExternalTriggerSLAPP(Rapist, RapeTry)
EndEvent

Function ExternalTriggerSLAPP(Actor Rapist, Bool RapeTry)
	if Rapist == None
		return
	endif
	Actor viceActor = None
	if ViceCaptainRef != None
		viceActor = ViceCaptainRef.getactorref()
	endif
	int whiterunStage = 0
	if BaboDialogueWhiterun != None
		whiterunStage = BaboDialogueWhiterun.getstage()
	endif
if RapeTry == false
	if (viceActor == Rapist) && (whiterunStage >= 30) && (whiterunStage < 60)
		Rapist.Setactorvalue("Variable06", Utility.randomint(4, 6))
		if BaboDialogueWhiterun != None
			(BaboDialogueWhiterun as BaboDialogueWhiterunScript).WVAS04()
		endif
	elseif (viceActor == Rapist) && (whiterunStage >= 60) && (whiterunStage < 65)
		Rapist.Setactorvalue("Variable06", 6)
		if BaboDialogueWhiterun != None
			(BaboDialogueWhiterun as BaboDialogueWhiterunScript).WVAS04(); For now below 60 and above 60 are the same.
		endif
	EndIf
endif

if RapeTry == true
	if (viceActor == Rapist) && (whiterunStage >= 30) && (whiterunStage < 60)
		Rapist.Setactorvalue("Variable06", 6)
		if BaboDialogueWhiterun != None
			(BaboDialogueWhiterun as BaboDialogueWhiterunScript).WVAS01();
		endif
	elseif (viceActor == Rapist) && (whiterunStage >= 60) && (whiterunStage < 65)
		Rapist.Setactorvalue("Variable06", 3)
		if BaboDialogueWhiterun != None
			(BaboDialogueWhiterun as BaboDialogueWhiterunScript).WVAS01()
		endif
	EndIf
CorruptionGainEvent()
SexCount(1)
endif
EndFunction

;---------------------------SLHH Related-----------------------------------

Function RegisterExternalModEvent()
	Debug.trace("Registering External Mod Events...")
	RegisterForModEvent("BaboDialogue_ConsequenceEvent", "BaboDialogueConsequenceEvent")
	RegisterForModEvent("BaboDialogue_SLAPPConsequenceEvent", "BaboDialogueSLAPPConsequenceEvent")
EndFunction


Event BaboDialogueConsequenceEvent(Form Rapist, Bool Worse, string results)
	if BaboMonitorScriptCreaturePackageActive != None
		BaboMonitorScriptCreaturePackageActive.setvalue(0)
	endif
	Debug.trace(results)
	Actor RapistActor = Rapist as actor
	ExternalTrigger(RapistActor, worse)
EndEvent

Function ExternalTrigger(Actor Raper, Bool Raped)
	if Raper == None
		return
	endif
	Actor viceActor = None
	if ViceCaptainRef != None
		viceActor = ViceCaptainRef.getactorref()
	endif
	int whiterunStage = 0
	if BaboDialogueWhiterun != None
		whiterunStage = BaboDialogueWhiterun.getstage()
	endif
if Raped == false

endif

if Raped == true
	if (viceActor == Raper) && (whiterunStage >= 30) && (whiterunStage < 60)
		Raper.Setactorvalue("Variable06", 6)
		if BaboDialogueWhiterun != None
			(BaboDialogueWhiterun as BaboDialogueWhiterunScript).WVAS01()
		endif
	elseif (BaboChangeLocationEvent06Faction != None && Raper.isinfaction(BaboChangeLocationEvent06Faction))
		if BaboChangeLocationEvent06 != None && BaboChangeLocationEvent06.getstage() == 10
			BaboChangeLocationEvent06.setstage(11)
		elseif BaboChangeLocationEvent06 != None && BaboChangeLocationEvent06.getstage() == 20
			BaboChangeLocationEvent06.setstage(21)
		endif
	elseif (BaboEncounter01Faction != None && Raper.isinfaction(BaboEncounter01Faction))
		if BaboEncounter01 != None && BaboEncounter01.getstage() == 30
			BaboEncounter01.setstage(37)
		endif
	elseif (BaboEncounter02Faction != None && Raper.isinfaction(BaboEncounter02Faction))
		if BaboEncounter02 != None && BaboEncounter02.getstage() == 7
			BaboEncounter02.setstage(9)
		endif
	elseif (viceActor == Raper) && (whiterunStage >= 60) && (whiterunStage < 65)
		Raper.Setactorvalue("Variable06", 3)
		if BaboDialogueWhiterun != None
			(BaboDialogueWhiterun as BaboDialogueWhiterunScript).WVAS01()
		endif
	elseif (BaboCurrentHireling != None && Raper.isinfaction(BaboCurrentHireling)) || (BaboCurrentAnimalHireling != None && Raper.isinfaction(BaboCurrentAnimalHireling))
		if BaboDialogueHirelings != None
			(BaboDialogueHirelings as BaboDialogueHirelingsQuest).AfterRapeSceneStart()
		endif
	EndIf

	if (BaboChangeLocationEvent08Faction != None && Raper.isinfaction(BaboChangeLocationEvent08Faction))
		if BaboChangeLocationEvent08 != None && BaboChangeLocationEvent08.getstage() == 25
			BaboChangeLocationEvent08.setstage(28)
		elseif BaboChangeLocationEvent08 != None && BaboChangeLocationEvent08.getstage() == 45
			BaboChangeLocationEvent08.setstage(47)
		endif
	endif

	if BaboChangeLocationEvent02 != None && BaboChangeLocationEvent02.getstage() == 20
		Utility.wait(3.0)
		BaboChangeLocationEvent02.setstage(30)
	endif

	if BaboChangeLocationEvent02Forest != None && BaboChangeLocationEvent02Forest.getstage() == 20
		Utility.wait(3.0)
		BaboChangeLocationEvent02Forest.setstage(30)
	endif

	if BaboChangeLocationEvent02ForestSnow != None && BaboChangeLocationEvent02ForestSnow.getstage() == 20
		Utility.wait(3.0)
		BaboChangeLocationEvent02ForestSnow.setstage(30)
	endif

	if BaboChangeLocationEvent02Coast != None && BaboChangeLocationEvent02Coast.getstage() == 20
		Utility.wait(3.0)
		BaboChangeLocationEvent02Coast.setstage(30)
	endif

	if BaboChangeLocationEvent02Marsh != None && BaboChangeLocationEvent02Marsh.getstage() == 20
		Utility.wait(3.0)
		BaboChangeLocationEvent02Marsh.setstage(30)
	endif
	
	if BaboChangeLocationEvent02Mountain != None && BaboChangeLocationEvent02Mountain.getstage() == 20
		Utility.wait(3.0)
		BaboChangeLocationEvent02Mountain.setstage(30)
	endif
	
	if BaboChangeLocationEvent02MountainSnow != None && BaboChangeLocationEvent02MountainSnow.getstage() == 20
		Utility.wait(3.0)
		BaboChangeLocationEvent02MountainSnow.setstage(30)
	endif
	
	if BaboChangeLocationEvent02Plain != None && BaboChangeLocationEvent02Plain.getstage() == 20
		Utility.wait(3.0)
		BaboChangeLocationEvent02Plain.setstage(30)
	endif
	
	if BaboChangeLocationEvent02PlainSnow != None && BaboChangeLocationEvent02PlainSnow.getstage() == 20
		Utility.wait(3.0)
		BaboChangeLocationEvent02PlainSnow.setstage(30)
	endif

SexCount(1)

else

	if (BaboChangeLocationEvent05 != None && BaboChangeLocationEvent05.getstage() == 20) && (BaboChangeLocationEvent05Visitor != None && BaboChangeLocationEvent05Visitor.getactorref() == Raper)
		BaboChangeLocationEvent05.setstage(30);BaboDiaQuest script handles the escapefail situation. Don't have to add elseif.

	elseif (viceActor == Raper) && (whiterunStage >= 30) && (whiterunStage < 60)
		Raper.Setactorvalue("Variable06", 4)
		if BaboDialogueWhiterun != None
			(BaboDialogueWhiterun as BaboDialogueWhiterunScript).WVAS03()
		endif
	elseif (BaboCurrentHireling != None && Raper.isinfaction(BaboCurrentHireling)) || (BaboCurrentAnimalHireling != None && Raper.isinfaction(BaboCurrentAnimalHireling))
		if BaboDialogueHirelings != None
			(BaboDialogueHirelings as BaboDialogueHirelingsQuest).DismissFollower(3)
		endif
	EndIf

	if (BaboEncounter01Faction != None && Raper.isinfaction(BaboEncounter01Faction))
		if BaboEncounter01 != None && BaboEncounter01.getstage() == 30
			BaboEncounter01.setstage(35)
		endif
	endif
	if (BaboEncounter02Faction != None && Raper.isinfaction(BaboEncounter02Faction))
		if BaboEncounter02 != None && BaboEncounter02.getstage() == 7
			BaboEncounter02.setstage(8)
		endif
	endif
	
	if (BaboChangeLocationEvent08Faction != None && Raper.isinfaction(BaboChangeLocationEvent08Faction))
		if BaboChangeLocationEvent08 != None && BaboChangeLocationEvent08.getstage() == 25
			BaboChangeLocationEvent08.setstage(27)
		elseif BaboChangeLocationEvent08 != None && BaboChangeLocationEvent08.getstage() == 45
			BaboChangeLocationEvent08.setstage(46)
		endif
	endif
	
	if BaboChangeLocationEvent02 != None && BaboChangeLocationEvent02.getstage() == 20
		BaboChangeLocationEvent02.setstage(70)
	endif

	if BaboChangeLocationEvent02Forest != None && BaboChangeLocationEvent02Forest.getstage() == 20
		BaboChangeLocationEvent02Forest.setstage(70)
	endif

	if BaboChangeLocationEvent02ForestSnow != None && BaboChangeLocationEvent02ForestSnow.getstage() == 20
		BaboChangeLocationEvent02ForestSnow.setstage(70)
	endif
	
	if BaboChangeLocationEvent02Coast != None && BaboChangeLocationEvent02Coast.getstage() == 20
		BaboChangeLocationEvent02Coast.setstage(70)
	endif
	
	if BaboChangeLocationEvent02Marsh != None && BaboChangeLocationEvent02Marsh.getstage() == 20
		BaboChangeLocationEvent02Marsh.setstage(70)
	endif
	
	if BaboChangeLocationEvent02Mountain != None && BaboChangeLocationEvent02Mountain.getstage() == 20
		BaboChangeLocationEvent02Mountain.setstage(70)
	endif
	
	if BaboChangeLocationEvent02MountainSnow != None && BaboChangeLocationEvent02MountainSnow.getstage() == 20
		BaboChangeLocationEvent02MountainSnow.setstage(70)
	endif
	
	if BaboChangeLocationEvent02Plain != None && BaboChangeLocationEvent02Plain.getstage() == 20
		BaboChangeLocationEvent02Plain.setstage(70)
	endif
	
	if BaboChangeLocationEvent02PlainSnow != None && BaboChangeLocationEvent02PlainSnow.getstage() == 20
		BaboChangeLocationEvent02PlainSnow.setstage(70)
	endif

endif

if BaboCreatureArousedFaction != None && BaboCreatureMatePartnerFaction != None && raper.isinfaction(BaboCreatureArousedFaction)
	raper.removefromfaction(BaboCreatureArousedFaction)
	raper.addtofaction(BaboCreatureMatePartnerFaction)
endif
EndFunction
