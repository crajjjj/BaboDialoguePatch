ScriptName BaboDiaMonitorScript Extends Quest conditional

;-- Variables ---------------------------------------
Alias AF01
Alias AM01
Alias AM02
Alias AM03
ReferenceAlias Alias_ViceCaptain
ObjectReference Dummy
Float InflationFloat = 0.0
Bool Isplaying = False
Float LastUpdate = 0.0
Actor ViceCaptain
Actor akAF01
Actor akAM01
Actor akAM02
Actor akAM03
Actor crosshairRef

;-- Properties --------------------------------------
Keyword Property ActorTypeCreature Auto
Keyword Property ActorTypeDaedra Auto
Keyword Property ActorTypeDragon Auto
Keyword Property ActorTypeDwarven Auto
Keyword Property ActorTypeFamiliar Auto
Keyword Property ActorTypeGhost Auto
Keyword Property ActorTypeNPC Auto
Keyword Property ActorTypeTroll Auto
Keyword Property ActorTypeUndead Auto
Perk Property AllurePerkPlus Auto
Keyword Property ArmorHeavy Auto
Keyword Property ArmorLight Auto
Keyword Property Armorcuirass Auto
babodialogueconfigmenu Property BDConfig Auto
Quest Property BDDibella Auto
baboreputationmasterscript Property BRMQuest Auto
Location Property BYOHHouse1LocationInterior Auto
Location Property BYOHHouse2LocationInterior Auto
Location Property BYOHHouse3LocationInterior Auto
GlobalVariable Property BaboBF Auto
GlobalVariable Property BaboBYOHHouse1LocationInteriorGameDay Auto
GlobalVariable Property BaboBYOHHouse1LocationInteriorGameDayInterval Auto
GlobalVariable Property BaboBYOHHouse2LocationInteriorGameDay Auto
GlobalVariable Property BaboBYOHHouse2LocationInteriorGameDayInterval Auto
GlobalVariable Property BaboBYOHHouse3LocationInteriorGameDay Auto
GlobalVariable Property BaboBYOHHouse3LocationInteriorGameDayInterval Auto
GlobalVariable Property BaboBeeingFemale Auto
baboboyfriendvariablescript Property BaboBoyFriendVariable Auto
Quest Property BaboBoyFriendVariableSetting Auto
Faction Property BaboCreatureArousedFaction Auto
Faction Property BaboCreatureMatePartnerFaction Auto
FormList Property BaboCreatureNonPacifiedRace Auto
FormList Property BaboCreaturePacified Auto
FormList Property BaboCreatureTrollRace Auto
GlobalVariable Property BaboDDI Auto
GlobalVariable Property BaboDebugging Auto
GlobalVariable Property BaboDetectSpectatorHowMany Auto
Keyword Property BaboDetectSpectatorKeyword Auto
Quest Property BaboDetectSpectatorQuest Auto
GlobalVariable Property BaboDetectSpectatorUpdateInterval Auto
babodialoguehirelingsquest Property BaboDialogueHirelings Auto
Quest Property BaboDialogueWhiterun Auto
GlobalVariable Property BaboEstrusChaurus Auto
Quest Property BaboEventRieklingThirsk Auto
GlobalVariable Property BaboFHU Auto
Faction Property BaboFactionAlmostEatenTitle Auto
Faction Property BaboFactionArgonianDefeatedTitle Auto
Faction Property BaboFactionArgonianDisplayedFuckToyTitle Auto
Faction Property BaboFactionBoozethatleadstoTitle Auto
Faction Property BaboFactionChallengerFucktoyTitle Auto
Faction Property BaboFactionDeviousNobleSonFuckToyTitle Auto
Faction Property BaboFactionInvestigationMarkarthTitle Auto
Faction Property BaboFactionLoanSharkSlaveTitle Auto
Faction Property BaboFactionNightgateInnFuckedTitle Auto
Faction Property BaboFactionNightgateInnVictoryTitle Auto
Faction Property BaboFactionPitifulHeroineTitle Auto
Faction Property BaboFactionRieklingThirskFuckToyTitle Auto
Faction Property BaboFactionStallionSkewerTitle Auto
Faction Property BaboFactionStatCorruption Auto
Faction Property BaboFactionStatExhibitionist Auto
Faction Property BaboFactionStatLewdness Auto
Faction Property BaboFactionStatWill Auto
Faction Property BaboFactionWarMaidenTitle Auto
Faction Property BaboFactionWhiterunOrcFuckToyTitle Auto
GlobalVariable Property BaboFertility Auto
GlobalVariable Property BaboHorribleHarassment Auto
Keyword Property BaboKidnapCallKeyword Auto
Quest Property BaboKidnapEvent Auto
GlobalVariable Property BaboMonitorScriptCreaturePackageActive Auto
Faction Property BaboNPCAnimating Auto
GlobalVariable Property BaboPlayerAppearanceValue Auto
GlobalVariable Property BaboPlayerBreastsValue Auto
GlobalVariable Property BaboPlayerButtocksValue Auto
GlobalVariable Property BaboPlayerPubicHair Auto
GlobalVariable Property BaboReputation Auto
GlobalVariable Property BaboReputationBitch Auto
GlobalVariable Property BaboSeducingAttemptCount Auto
GlobalVariable Property BaboSeducingMercenaryAttemptCount Auto
GlobalVariable Property BaboSeducingMerchantAttemptCount Auto
Quest Property BaboSexController Auto
GlobalVariable Property BaboSexCountBeast Auto
GlobalVariable Property BaboSexCountCanine Auto
GlobalVariable Property BaboSexCountChaurus Auto
GlobalVariable Property BaboSexCountCreatureRape Auto
GlobalVariable Property BaboSexCountDragon Auto
GlobalVariable Property BaboSexCountDraugr Auto
GlobalVariable Property BaboSexCountDwarven Auto
GlobalVariable Property BaboSexCountFalmer Auto
GlobalVariable Property BaboSexCountFrostAtronach Auto
GlobalVariable Property BaboSexCountGargoyle Auto
GlobalVariable Property BaboSexCountGiant Auto
GlobalVariable Property BaboSexCountHorker Auto
GlobalVariable Property BaboSexCountHorse Auto
GlobalVariable Property BaboSexCountRiekling Auto
GlobalVariable Property BaboSexCountSkeever Auto
GlobalVariable Property BaboSexCountSpider Auto
GlobalVariable Property BaboSexCountSpriggan Auto
GlobalVariable Property BaboSexCountStormAtronach Auto
GlobalVariable Property BaboSexCountTroll Auto
GlobalVariable Property BaboSexlabApproach Auto
GlobalVariable Property BaboSexlabApproachBackHugMolested Auto
GlobalVariable Property BaboSexlabApproachBackHugged Auto
GlobalVariable Property BaboSexlabApproachForHello Auto
GlobalVariable Property BaboSexlabApproachForSex Auto
GlobalVariable Property BaboSexlabApproachForSpank Auto
GlobalVariable Property BaboSexlabApproachForcedKiss Auto
GlobalVariable Property BaboSexlabStatAggressor Auto
GlobalVariable Property BaboSexlabStatAnal Auto
GlobalVariable Property BaboSexlabStatBeastTrauma Auto
GlobalVariable Property BaboSexlabStatCanineTrauma Auto
GlobalVariable Property BaboSexlabStatChaurusTrauma Auto
GlobalVariable Property BaboSexlabStatConfidenceWill Auto
GlobalVariable Property BaboSexlabStatCorruption Auto
GlobalVariable Property BaboSexlabStatCorruptionSpeed Auto
GlobalVariable Property BaboSexlabStatCreatureTrauma Auto
GlobalVariable Property BaboSexlabStatCreatures Auto
GlobalVariable Property BaboSexlabStatCreaturesBeast Auto
GlobalVariable Property BaboSexlabStatCreaturesCanine Auto
GlobalVariable Property BaboSexlabStatCreaturesChaurus Auto
GlobalVariable Property BaboSexlabStatCreaturesCum Auto
GlobalVariable Property BaboSexlabStatCreaturesDraugr Auto
GlobalVariable Property BaboSexlabStatCreaturesDwarven Auto
GlobalVariable Property BaboSexlabStatCreaturesFalmer Auto
GlobalVariable Property BaboSexlabStatCreaturesFrostAtronach Auto
GlobalVariable Property BaboSexlabStatCreaturesGargoyle Auto
GlobalVariable Property BaboSexlabStatCreaturesGiant Auto
GlobalVariable Property BaboSexlabStatCreaturesHorker Auto
GlobalVariable Property BaboSexlabStatCreaturesHorse Auto
GlobalVariable Property BaboSexlabStatCreaturesRiekling Auto
GlobalVariable Property BaboSexlabStatCreaturesSkeever Auto
GlobalVariable Property BaboSexlabStatCreaturesSpider Auto
GlobalVariable Property BaboSexlabStatCreaturesSpriggan Auto
GlobalVariable Property BaboSexlabStatCreaturesStormAtronach Auto
GlobalVariable Property BaboSexlabStatCreaturesTroll Auto
GlobalVariable Property BaboSexlabStatDraugrTrauma Auto
GlobalVariable Property BaboSexlabStatDwarvenTrauma Auto
GlobalVariable Property BaboSexlabStatExhibitionist Auto
GlobalVariable Property BaboSexlabStatExhibitionistSpeed Auto
GlobalVariable Property BaboSexlabStatFalmerTrauma Auto
GlobalVariable Property BaboSexlabStatFemales Auto
GlobalVariable Property BaboSexlabStatFrostAtronachTrauma Auto
GlobalVariable Property BaboSexlabStatGargoyleTrauma Auto
GlobalVariable Property BaboSexlabStatGiantTrauma Auto
GlobalVariable Property BaboSexlabStatHorkerTrauma Auto
GlobalVariable Property BaboSexlabStatHorseTrauma Auto
GlobalVariable Property BaboSexlabStatLewdness Auto
GlobalVariable Property BaboSexlabStatLewdnessSpeed Auto
GlobalVariable Property BaboSexlabStatMales Auto
GlobalVariable Property BaboSexlabStatOral Auto
GlobalVariable Property BaboSexlabStatRieklingTrauma Auto
GlobalVariable Property BaboSexlabStatSkeeverTrauma Auto
GlobalVariable Property BaboSexlabStatSkimpyDecrease Auto
GlobalVariable Property BaboSexlabStatSkimpyExpLevel Auto
GlobalVariable Property BaboSexlabStatSkimpySpeed Auto
GlobalVariable Property BaboSexlabStatSpiderTrauma Auto
GlobalVariable Property BaboSexlabStatSprigganTrauma Auto
GlobalVariable Property BaboSexlabStatStormAtronachTrauma Auto
GlobalVariable Property BaboSexlabStatTrauma Auto
GlobalVariable Property BaboSexlabStatTrollTrauma Auto
GlobalVariable Property BaboSexlabStatVaginal Auto
GlobalVariable Property BaboSexlabStatVictim Auto
GlobalVariable Property BaboSexlabStatusFHU Auto
GlobalVariable Property BaboSexlabSurvivalGlobal Auto
Faction Property BaboTrollAllyFaction Auto
Faction Property BaboTrollFaction Auto
GlobalVariable Property BaboWhiterunBreezehomeGameDay Auto
GlobalVariable Property BaboWhiterunBreezehomeGameDayInterval Auto
baboxmarkermover Property BaboXmarkerMoverScript Auto
Faction Property Babopacifiedcreaturefaction Auto
Race Property BearBlackRace Auto
Race Property BearBrownRace Auto
Race Property BearSnowRace Auto
Float Property BikExp = 0.0 Auto hidden
Race Property ChaurusRace Auto
Race Property ChaurusReaperRace Auto
Keyword Property ClothingBody Auto
Float Property CorruptionExp = 0.0 Auto hidden
ReferenceAlias[] Property CreatureReferences Auto
Race Property DLC1ChaurusHunterRace Auto
Race Property DLC1SabreCatGlowRace Auto
Race Property DLC1TrollFrostRaceArmored Auto
Race Property DLC1TrollRaceArmored Auto
Race Property DLC1_BF_ChaurusRace Auto
Race Property DLC2GhostFrostGiantRace Auto
Keyword Property DLC2RieklingKeyword Auto
Race Property DLC2WerebearBeastRace Auto
Float Property DistanceInFront Auto
Float Property DistanceZ Auto
Package Property DoNothing Auto
Spell Property EnthrallMerchantSpell Auto
Keyword Property EroticArmor Auto
Float Property ExhibitionistExp = 0.0 Auto hidden
Float Property ExpPerLevel = 100.0 Auto hidden
Race Property FalmerRace Auto
Float[] Property FertilityLastBirth Auto
GlobalVariable Property GameDaysPassed Auto
Race Property GiantRace Auto
Faction Property JobMerchantFaction Auto
Float Property LewdnessExp = 0.0 Auto hidden
Quest Property MQ101 Auto
ObjectReference Property MiscReferences Auto
Actor Property PlayerRef Auto
Faction Property PotentialHireling Auto
Faction Property SLAX_CumFilledFaction Auto
Faction Property SLAX_NudismAddictFaction Auto
Faction Property SLAX_SexAddictFaction Auto
Faction Property SLAX_SubmissiveFaction Auto
Faction Property SLAX_WillBrokenFaction Auto
Faction Property SLAX_WillfulFaction Auto
Keyword Property SLA_ArmorCurtain Auto
Keyword Property SLA_ArmorHalfNaked Auto
Keyword Property SLA_ArmorHalfNakedBikini Auto
Keyword Property SLA_ArmorLewdLeotard Auto
Keyword Property SLA_ArmorPretty Auto
Keyword Property SLA_ArmorSpendex Auto
Keyword Property SLA_ArmorTransparent Auto
Keyword Property SLA_BraBikini Auto
Keyword Property SLA_MicroHotpants Auto
Keyword Property SLA_PantsNormal Auto
Keyword Property SLA_PantyNormal Auto
Keyword Property SLA_ThongCString Auto
Keyword Property SLA_ThongGString Auto
Keyword Property SLA_ThongLowleg Auto
Keyword Property SLA_ThongT Auto
Faction Property SR_InflateFaction Auto hidden
Race Property SabreCatRace Auto
Race Property SabreCatSnowyRace Auto
sexlabframework Property SexLab Auto
Faction Property TrollFaction Auto
Race Property TrollFrostRace Auto
Race Property TrollRace Auto
ReferenceAlias Property ViceCaptainRef Auto
Race Property WerewolfBeastRace Auto
Location Property WhiterunBreezehomeLocation Auto
Race Property WolfRace Auto
GlobalVariable Property _BFPlayerState Auto
Faction Property _BF_ParentFaction Auto
Potion Property _JSW_BB_PotionFertility Auto
Keyword Property _SLS_BikiniArmor Auto
Book Property _SLS_LicenceArmor Auto
Book Property _SLS_LicenceBikini Auto
Book Property _SLS_LicenceClothes Auto
Book Property _SLS_LicenceMagic Auto
Book Property _SLS_LicenceWeapon Auto
Bool Property bSurrenderKey = False Auto
Faction Property sla_Arousal Auto
Faction Property sla_Exposure Auto
Quest Property sla_Framework Auto
Key Property zad_ChastityKey Auto hidden
Keyword Property zad_DeviousArmCuffs Auto hidden
Keyword Property zad_DeviousArmbinder Auto hidden
Keyword Property zad_DeviousBelt Auto hidden
Keyword Property zad_DeviousBlindfold Auto hidden
Keyword Property zad_DeviousBoots Auto hidden
Keyword Property zad_DeviousBra Auto hidden
Keyword Property zad_DeviousCollar Auto hidden
Keyword Property zad_DeviousCorset Auto hidden
Keyword Property zad_DeviousGag Auto hidden
Keyword Property zad_DeviousHarness Auto hidden
Keyword Property zad_DeviousHood Auto hidden
Keyword Property zad_DeviousPiercingsNipple Auto hidden
Keyword Property zad_DeviousPiercingsVaginal Auto hidden
Keyword Property zad_DeviousPlug Auto hidden
Keyword Property zad_DeviousPlugAnal Auto hidden
Keyword Property zad_DeviousPlugVaginal Auto hidden
Keyword Property zad_DeviousSuit Auto hidden
Keyword Property zad_DeviousYoke Auto hidden
Keyword Property zad_Lockable Auto hidden
Key Property zad_PiercingsRemovalTool Auto hidden
Key Property zad_RestraintsKey Auto hidden
Quest Property zadquest Auto hidden
Faction Property zzEstrusChaurusBreederFaction Auto hidden

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

Function ShiftPositionStart(Form FormRef, Int tid)
  ; Empty function
EndFunction

Function SkyrimAchievement()
  ; Empty function
EndFunction

Event OnInit()
  Self.RegisterFunction() ; #DEBUG_LINE_NO:364
EndEvent

Function OnKeyDown(Int keyCode)
  If !Utility.IsInMenuMode() && BDConfig.NotificationKey == keyCode ; #DEBUG_LINE_NO:368
    (BaboSexController as babosexcontrollermanager).AppearanceCalc() ; #DEBUG_LINE_NO:369
    If PlayerRef.isinfaction(BaboNPCAnimating) ; #DEBUG_LINE_NO:370
      Return  ; #DEBUG_LINE_NO:371
    EndIf
    If BaboKidnapEvent.isrunning() && BaboKidnapEvent.getstage() >= 8 ; #DEBUG_LINE_NO:373
      Bool bkey = (BaboKidnapEvent as babokidnapevenscript).KeyPress() ; #DEBUG_LINE_NO:374
      If bkey ; #DEBUG_LINE_NO:375
        BaboXmarkerMoverScript.KeyPressSelfCommentary(6) ; #DEBUG_LINE_NO:376
        Return  ; #DEBUG_LINE_NO:377
      Else
        Return  ; #DEBUG_LINE_NO:379
      EndIf
    EndIf
    If BaboEventRieklingThirsk.isrunning() ; #DEBUG_LINE_NO:383
      Bool bkey = (BaboEventRieklingThirsk as baboeventriekling).KeyPress() ; #DEBUG_LINE_NO:384
      If bkey ; #DEBUG_LINE_NO:385
        BaboXmarkerMoverScript.KeyPressSelfCommentary(6) ; #DEBUG_LINE_NO:386
        Return  ; #DEBUG_LINE_NO:387
      EndIf
    EndIf
    If BDDibella.getstage() >= 20 && !PlayerRef.isincombat() ; #DEBUG_LINE_NO:391
      If crosshairRef != None ; #DEBUG_LINE_NO:394
        If Self.EnthrallMerchants(crosshairRef) ; #DEBUG_LINE_NO:395
          
        Else
          BaboXmarkerMoverScript.KeyPressSelfCommentary(0) ; #DEBUG_LINE_NO:398
        EndIf
      Else
        BaboXmarkerMoverScript.KeyPressSelfCommentary(0) ; #DEBUG_LINE_NO:401
      EndIf
    ElseIf crosshairRef.isincombat() && bSurrenderKey ; #DEBUG_LINE_NO:403
      (BaboSexController as babosexcontrollermanager).Surrender(crosshairRef) ; #DEBUG_LINE_NO:404
    Else
      BaboXmarkerMoverScript.KeyPressSelfCommentary(0) ; #DEBUG_LINE_NO:408
    EndIf
  EndIf
EndFunction

Function OnCrosshairRefChange(ObjectReference ref)
  crosshairRef = ref as Actor ; #DEBUG_LINE_NO:414
EndFunction

Function BaboSLAPPMercenaryEvent(Form akSpeakerform)
  Actor akspeaker = akSpeakerform as Actor ; #DEBUG_LINE_NO:419
  BaboDialogueHirelings.SexlabApproachRegister(akspeaker) ; #DEBUG_LINE_NO:420
EndFunction

Function BaboSLAPPBoyFriendEvent(Form akSpeakerform)
  Actor akspeaker = akSpeakerform as Actor ; #DEBUG_LINE_NO:424
EndFunction

Function BaboCustomKidnapEvent(Form akactorformA, Form akactorformB, Int iScenario)
  Actor akactorA = akactorformA as Actor ; #DEBUG_LINE_NO:428
  Actor akactorB = akactorformB as Actor ; #DEBUG_LINE_NO:429
  If iScenario >= 4 && iScenario < 10 ; #DEBUG_LINE_NO:430
    iScenario = 4 ; #DEBUG_LINE_NO:431
    akactorB = None ; #DEBUG_LINE_NO:432
  EndIf
  If iScenario >= 10 && iScenario < 20 ; #DEBUG_LINE_NO:435
    iScenario = 10 ; #DEBUG_LINE_NO:436
  EndIf
  (BaboSexController as babosexcontrollermanager).KidnapQuestStart(akactorA, akactorB, iScenario, None) ; #DEBUG_LINE_NO:438
  Utility.wait(7.0) ; #DEBUG_LINE_NO:439
  (BaboKidnapEvent as babokidnapevenscript).StartUptheEvent(iScenario) ; #DEBUG_LINE_NO:440
EndFunction

Event OnAnimationEvent(ObjectReference akSource, String asEventName)
  If (akSource == PlayerRef as ObjectReference) && asEventName == "Babo_Drunk_S04_A01" ; #DEBUG_LINE_NO:448
    Self.CalcCorruptionExpGain(1.0) ; #DEBUG_LINE_NO:449
  EndIf
  If (akSource == PlayerRef as ObjectReference) && asEventName == "Babo_Drunk_S05_A01" ; #DEBUG_LINE_NO:451
    Self.CalcCorruptionExpLoss(1.0) ; #DEBUG_LINE_NO:452
  EndIf
  If (akSource == PlayerRef as ObjectReference) && asEventName == "Babo_ChokeHug_S04_A01" ; #DEBUG_LINE_NO:455
    Self.CalcCorruptionExpGain(2.0) ; #DEBUG_LINE_NO:456
  EndIf
  If (akSource == PlayerRef as ObjectReference) && asEventName == "Babo_ChokeHug_S05_A01" ; #DEBUG_LINE_NO:458
    Self.CalcCorruptionExpLoss(2.0) ; #DEBUG_LINE_NO:459
  EndIf
  If (akSource == PlayerRef as ObjectReference) && asEventName == "Babo_Struggle_S04_A01" ; #DEBUG_LINE_NO:462
    Self.CalcCorruptionExpGain(1.0) ; #DEBUG_LINE_NO:463
  EndIf
  If (akSource == PlayerRef as ObjectReference) && asEventName == "Babo_Struggle_S05_A01" ; #DEBUG_LINE_NO:466
    Self.CalcCorruptionExpLoss(1.0) ; #DEBUG_LINE_NO:467
  EndIf
  If (akSource == PlayerRef as ObjectReference) && asEventName == "Babo_Troll_S04_A01" ; #DEBUG_LINE_NO:470
    Self.CalcCorruptionExpGain(1.0) ; #DEBUG_LINE_NO:471
  EndIf
  If (akSource == PlayerRef as ObjectReference) && asEventName == "Babo_Troll_S05_A01" ; #DEBUG_LINE_NO:474
    Self.CalcCorruptionExpLoss(1.0) ; #DEBUG_LINE_NO:475
  EndIf
  If (akSource == PlayerRef as ObjectReference) && asEventName == "Babo_Riekling_S04_A01" ; #DEBUG_LINE_NO:478
    Self.CalcCorruptionExpGain(1.0) ; #DEBUG_LINE_NO:479
  EndIf
  If (akSource == PlayerRef as ObjectReference) && asEventName == "Babo_RieklingQTE_S01_A01" ; #DEBUG_LINE_NO:482
    Self.CalcCorruptionExpLoss(1.0) ; #DEBUG_LINE_NO:483
  EndIf
EndEvent

Function OnBaboEnslavedEvent()
  BaboKidnapCallKeyword.SendStoryEvent(None, None, None, 0, 0) ; #DEBUG_LINE_NO:488
  If BaboDebugging.getvalue() == 1 as Float ; #DEBUG_LINE_NO:489
    Debug.notification("BaboKidnapCallKeyword") ; #DEBUG_LINE_NO:490
  EndIf
EndFunction

Function CreatureRegister(Actor creatureRef, Race CreatureRace)
  If creatureRef.haskeyword(ActorTypeNPC) ; #DEBUG_LINE_NO:499
    Return  ; #DEBUG_LINE_NO:500
  EndIf
  If creatureRef.haskeyword(ActorTypeUndead) || creatureRef.haskeyword(ActorTypeDragon) || creatureRef.haskeyword(ActorTypeDaedra) || creatureRef.haskeyword(ActorTypeDwarven) || creatureRef.haskeyword(ActorTypeFamiliar) || creatureRef.haskeyword(ActorTypeGhost) ; #DEBUG_LINE_NO:503
    Return  ; #DEBUG_LINE_NO:504
  EndIf
  If creatureRef.isinfaction(Babopacifiedcreaturefaction) || creatureRef.isinfaction(BaboCreatureMatePartnerFaction) ; #DEBUG_LINE_NO:507
    Return  ; #DEBUG_LINE_NO:508
  EndIf
  If BaboCreatureNonPacifiedRace.hasform(CreatureRace as Form) ; #DEBUG_LINE_NO:511
    Return  ; #DEBUG_LINE_NO:512
  EndIf
  Bool IsSexCreature = 0 as Bool ; #DEBUG_LINE_NO:516
  If BaboCreatureTrollRace.hasform(CreatureRace as Form) && !creatureRef.isinfaction(BaboTrollAllyFaction) && !creatureRef.isinfaction(BaboCreatureArousedFaction) ; #DEBUG_LINE_NO:518
    creatureRef.AddToFaction(BaboTrollAllyFaction) ; #DEBUG_LINE_NO:519
    BaboCreaturePacified.addform(creatureRef as Form) ; #DEBUG_LINE_NO:520
    creatureRef.stopcombatalarm() ; #DEBUG_LINE_NO:521
    IsSexCreature = 0 as Bool ; #DEBUG_LINE_NO:522
  ElseIf creatureRef.isinfaction(BaboTrollAllyFaction) ; #DEBUG_LINE_NO:523
    creatureRef.removefromFaction(BaboTrollAllyFaction) ; #DEBUG_LINE_NO:524
    creatureRef.removefromFaction(TrollFaction) ; #DEBUG_LINE_NO:525
    creatureRef.removefromFaction(BaboTrollFaction) ; #DEBUG_LINE_NO:526
    creatureRef.AddToFaction(BaboCreatureArousedFaction) ; #DEBUG_LINE_NO:527
    IsSexCreature = 0 as Bool ; #DEBUG_LINE_NO:528
  ElseIf creatureRef.isinfaction(BaboCreatureArousedFaction) ; #DEBUG_LINE_NO:529
    If creatureRef.isincombat() ; #DEBUG_LINE_NO:530
      Return  ; #DEBUG_LINE_NO:531
    Else
      IsSexCreature = 1 as Bool ; #DEBUG_LINE_NO:533
    EndIf
  Else
    creatureRef.AddToFaction(Babopacifiedcreaturefaction) ; #DEBUG_LINE_NO:536
    BaboCreaturePacified.addform(creatureRef as Form) ; #DEBUG_LINE_NO:537
    IsSexCreature = 0 as Bool ; #DEBUG_LINE_NO:538
    Return  ; #DEBUG_LINE_NO:539
  EndIf
  If IsSexCreature == 1 as Bool ; #DEBUG_LINE_NO:542
    Int ArousalState = (sla_Framework as slaframeworkscr).GetActorExposure(creatureRef) ; #DEBUG_LINE_NO:544
    If PlayerRef.WornHasKeyword(SLA_ArmorPretty) ; #DEBUG_LINE_NO:545
      ArousalState += 10 ; #DEBUG_LINE_NO:546
    ElseIf PlayerRef.WornHasKeyword(EroticArmor) ; #DEBUG_LINE_NO:547
      ArousalState += 20 ; #DEBUG_LINE_NO:548
    ElseIf PlayerRef.WornHasKeyword(SLA_ArmorSpendex) || PlayerRef.WornHasKeyword(SLA_ArmorLewdLeotard) ; #DEBUG_LINE_NO:549
      ArousalState += 40 ; #DEBUG_LINE_NO:550
    ElseIf PlayerRef.WornHasKeyword(SLA_ArmorHalfNakedBikini) || PlayerRef.WornHasKeyword(SLA_ArmorCurtain) ; #DEBUG_LINE_NO:551
      ArousalState += 60 ; #DEBUG_LINE_NO:552
    ElseIf PlayerRef.WornHasKeyword(SLA_ArmorHalfNaked) || PlayerRef.WornHasKeyword(SLA_ArmorTransparent) ; #DEBUG_LINE_NO:553
      ArousalState += 70 ; #DEBUG_LINE_NO:554
    EndIf
    If ArousalState >= 95 ; #DEBUG_LINE_NO:557
      (sla_Framework as slaframeworkscr).SetActorExposure(creatureRef, 100) ; #DEBUG_LINE_NO:559
    Else
      (sla_Framework as slaframeworkscr).SetActorExposure(creatureRef, ArousalState + 5) ; #DEBUG_LINE_NO:561
    EndIf
    If BaboMonitorScriptCreaturePackageActive.getvalue() == 0 as Float ; #DEBUG_LINE_NO:566
      If Self.ManageCreature(creatureRef) ; #DEBUG_LINE_NO:567
        BaboMonitorScriptCreaturePackageActive.setvalue(1 as Float) ; #DEBUG_LINE_NO:568
        creatureRef.evaluatepackage() ; #DEBUG_LINE_NO:569
      EndIf
    ElseIf BaboMonitorScriptCreaturePackageActive.getvalue() == 1 as Float ; #DEBUG_LINE_NO:571
      If (creatureRef == CreatureReferences[0].GetReference() as Actor) || (creatureRef == CreatureReferences[1].GetReference() as Actor) || (creatureRef == CreatureReferences[2].GetReference() as Actor) ; #DEBUG_LINE_NO:572
        creatureRef.evaluatepackage() ; #DEBUG_LINE_NO:573
      ElseIf Self.ManageCreature(creatureRef) ; #DEBUG_LINE_NO:575
        creatureRef.evaluatepackage() ; #DEBUG_LINE_NO:576
      EndIf
    EndIf
  EndIf
EndFunction

Function Creatureunregister()
  Int iIndex = BaboCreaturePacified.getsize() ; #DEBUG_LINE_NO:584
  While iIndex > 0 ; #DEBUG_LINE_NO:585
    iIndex -= 1 ; #DEBUG_LINE_NO:594
    Actor akList = BaboCreaturePacified.GetAt(iIndex) as Actor ; #DEBUG_LINE_NO:586
    If akList && !akList.is3dLoaded() ; #DEBUG_LINE_NO:588
      BaboCreaturePacified.RemoveAddedForm(akList as Form) ; #DEBUG_LINE_NO:589
      akList.removefromFaction(Babopacifiedcreaturefaction) ; #DEBUG_LINE_NO:590
      akList.removefromFaction(BaboTrollAllyFaction) ; #DEBUG_LINE_NO:591
      akList.removefromFaction(BaboCreatureArousedFaction) ; #DEBUG_LINE_NO:592
    EndIf
  EndWhile
EndFunction

Bool Function ManageCreature(Actor ArousedAnimal)
  Debug.trace("ManageCreature", 0) ; #DEBUG_LINE_NO:599
  Int iIndex = 0 ; #DEBUG_LINE_NO:600
  While iIndex < 3 ; #DEBUG_LINE_NO:601
    Actor a1 = CreatureReferences[iIndex].GetReference() as Actor ; #DEBUG_LINE_NO:602
    If !a1 || a1.isdead() || !a1.is3dLoaded() ; #DEBUG_LINE_NO:603
      CreatureReferences[iIndex].clear() ; #DEBUG_LINE_NO:605
      CreatureReferences[iIndex].forcerefto(ArousedAnimal as ObjectReference) ; #DEBUG_LINE_NO:606
      Return True ; #DEBUG_LINE_NO:607
    EndIf
    iIndex += 1 ; #DEBUG_LINE_NO:609
  EndWhile
  Return False ; #DEBUG_LINE_NO:611
EndFunction

Function PlayerChangeLocation(Location akOldLoc, Location akNewLoc)
  If akNewLoc == WhiterunBreezehomeLocation ; #DEBUG_LINE_NO:615
    If BaboDialogueWhiterun.getstage() >= 30 && BaboDialogueWhiterun.getstage() < 65 ; #DEBUG_LINE_NO:616
      If BaboWhiterunBreezehomeGameDayInterval.getvalue() <= GameDaysPassed.getvalue() - BaboWhiterunBreezehomeGameDay.getvalue() ; #DEBUG_LINE_NO:617
        ViceCaptain = ViceCaptainRef.GetReference() as Actor ; #DEBUG_LINE_NO:618
        If ViceCaptain.is3dLoaded() ; #DEBUG_LINE_NO:619
          BaboBoyFriendVariable.Variable06DiceRoll(ViceCaptain, 1) ; #DEBUG_LINE_NO:621
        EndIf
      EndIf
      BaboWhiterunBreezehomeGameDay.setvalue(GameDaysPassed.getvalue()) ; #DEBUG_LINE_NO:624
    EndIf
  ElseIf akNewLoc == BYOHHouse1LocationInterior ; #DEBUG_LINE_NO:626
    
  ElseIf akNewLoc == BYOHHouse2LocationInterior ; #DEBUG_LINE_NO:627
    
  ElseIf akNewLoc == BYOHHouse3LocationInterior ; #DEBUG_LINE_NO:628
    
  EndIf
EndFunction

Function RegisterExternalModEvent()
  Self.RegisterForModEvent("Babo_SLAPPMercenaryEvent", "BaboSLAPPMercenaryEvent") ; #DEBUG_LINE_NO:633
  Self.RegisterForModEvent("Babo_SLAPPBoyFriendEvent", "BaboSLAPPBoyFriendEvent") ; #DEBUG_LINE_NO:634
  Self.RegisterForModEvent("Babo_CustomKidnapEvent", "BaboCustomKidnapEvent") ; #DEBUG_LINE_NO:635
  Self.RegisterForModEvent("BaboEnslavedEvent", "OnBaboEnslavedEvent") ; #DEBUG_LINE_NO:636
EndFunction

Function RegisterFunction()
  Self.RegisterForCrosshairRef() ; #DEBUG_LINE_NO:641
  Self.UpdateKeyRegistery() ; #DEBUG_LINE_NO:642
  Self.RegisterForSexLabEvents() ; #DEBUG_LINE_NO:643
  Self.RegisterExternalModEvent() ; #DEBUG_LINE_NO:644
  Self.BeginUpdates() ; #DEBUG_LINE_NO:645
  Self.CD_FHU() ; #DEBUG_LINE_NO:647
  Self.CD_BF() ; #DEBUG_LINE_NO:648
  Self.CD_SLS() ; #DEBUG_LINE_NO:649
  Self.CD_DDI() ; #DEBUG_LINE_NO:650
  Self.CD_Fertility() ; #DEBUG_LINE_NO:651
  Self.CD_EstrusChaurus() ; #DEBUG_LINE_NO:652
  Debug.trace("BaboDialogue Keysetting Completed", 0) ; #DEBUG_LINE_NO:654
EndFunction

Function RegisterForSexLabEvents()
  Self.RegisterForModEvent("SexLabOrgasmSeparate", "BaboOrgasmSeparate") ; #DEBUG_LINE_NO:660
  Self.RegisterForModEvent("HookOrgasmStart", "BaboOrgasm") ; #DEBUG_LINE_NO:661
  Self.RegisterForModEvent("HookAnimationEnd", "BaboSexlabEnd") ; #DEBUG_LINE_NO:662
  If BaboHorribleHarassment.getvalue() == 1 as Float ; #DEBUG_LINE_NO:664
    Self.SLHHRegisterAnimationEvent() ; #DEBUG_LINE_NO:665
  EndIf
EndFunction

Function BaboSexlabEnd(Int tid, Bool HasPlayer)
  sslbaseanimation anim = SexLab.HookAnimation(tid as String) ; #DEBUG_LINE_NO:672
  If !HasPlayer ; #DEBUG_LINE_NO:674
    Return  ; #DEBUG_LINE_NO:675
  EndIf
  If anim.hasTag("Giant") || anim.hasTag("Lurker") ; #DEBUG_LINE_NO:680
    BaboSexCountGiant.setvalue(BaboSexCountGiant.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:681
  ElseIf anim.hasTag("Skeever") ; #DEBUG_LINE_NO:682
    BaboSexCountSkeever.setvalue(BaboSexCountSkeever.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:683
  ElseIf anim.hasTag("Draugr") || anim.hasTag("Dragonpriest") ; #DEBUG_LINE_NO:684
    BaboSexCountDraugr.setvalue(BaboSexCountDraugr.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:685
  ElseIf anim.hasTag("Wolf") || anim.hasTag("Werewolf") || anim.hasTag("Dog") ; #DEBUG_LINE_NO:686
    BaboSexCountCanine.setvalue(BaboSexCountCanine.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:687
  ElseIf anim.hasTag("Riekling") ; #DEBUG_LINE_NO:688
    BaboSexCountRiekling.setvalue(BaboSexCountRiekling.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:689
  ElseIf anim.hasTag("Sabrecat") || anim.hasTag("Bear") || anim.hasTag("Boar") ; #DEBUG_LINE_NO:690
    BaboSexCountBeast.setvalue(BaboSexCountBeast.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:691
  ElseIf anim.hasTag("Falmer") ; #DEBUG_LINE_NO:692
    BaboSexCountFalmer.setvalue(BaboSexCountFalmer.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:693
  ElseIf anim.hasTag("Troll") ; #DEBUG_LINE_NO:694
    BaboSexCountTroll.setvalue(BaboSexCountTroll.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:695
  ElseIf anim.hasTag("Horse") ; #DEBUG_LINE_NO:696
    BaboSexCountHorse.setvalue(BaboSexCountHorse.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:697
  ElseIf anim.hasTag("Chaurus") || anim.hasTag("ChaurusReapers") || anim.hasTag("ChaurusHunter") ; #DEBUG_LINE_NO:698
    BaboSexCountChaurus.setvalue(BaboSexCountChaurus.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:699
  ElseIf anim.hasTag("Spider") || anim.hasTag("LargeSpider") || anim.hasTag("GiantSpider") ; #DEBUG_LINE_NO:700
    BaboSexCountSpider.setvalue(BaboSexCountSpider.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:701
  ElseIf anim.hasTag("Spriggan") ; #DEBUG_LINE_NO:702
    BaboSexCountSpriggan.setvalue(BaboSexCountSpriggan.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:703
  ElseIf anim.hasTag("DwarvenSpider") || anim.hasTag("DwarvenCenturion") || anim.hasTag("DwarvenSphere") ; #DEBUG_LINE_NO:704
    BaboSexCountDwarven.setvalue(BaboSexCountDwarven.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:705
  ElseIf anim.hasTag("Gargoyle") ; #DEBUG_LINE_NO:706
    BaboSexCountGargoyle.setvalue(BaboSexCountGargoyle.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:707
  ElseIf anim.hasTag("FrostAtronach") ; #DEBUG_LINE_NO:708
    BaboSexCountFrostAtronach.setvalue(BaboSexCountFrostAtronach.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:709
  ElseIf anim.hasTag("StormAtronach") ; #DEBUG_LINE_NO:710
    BaboSexCountStormAtronach.setvalue(BaboSexCountStormAtronach.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:711
  ElseIf anim.hasTag("Horker") ; #DEBUG_LINE_NO:712
    BaboSexCountHorker.setvalue(BaboSexCountHorker.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:713
  EndIf
  BaboSexlabStatVaginal.setvalue(SexLab.Stats.GetInt(SexLab.PlayerRef, "Vaginal") as Float) ; #DEBUG_LINE_NO:718
  BaboSexlabStatAnal.setvalue(SexLab.Stats.GetInt(SexLab.PlayerRef, "Anal") as Float) ; #DEBUG_LINE_NO:719
  BaboSexlabStatOral.setvalue(SexLab.Stats.GetInt(SexLab.PlayerRef, "Oral") as Float) ; #DEBUG_LINE_NO:720
  BaboSexlabStatMales.setvalue(SexLab.Stats.GetInt(SexLab.PlayerRef, "Males") as Float) ; #DEBUG_LINE_NO:721
  BaboSexlabStatFemales.setvalue(SexLab.Stats.GetInt(SexLab.PlayerRef, "Females") as Float) ; #DEBUG_LINE_NO:722
  BaboSexlabStatCreatures.setvalue(SexLab.Stats.GetInt(SexLab.PlayerRef, "Creatures") as Float) ; #DEBUG_LINE_NO:723
  BaboSexlabStatAggressor.setvalue(SexLab.Stats.GetInt(SexLab.PlayerRef, "Aggressor") as Float) ; #DEBUG_LINE_NO:724
  Int Victimint = BaboSexlabStatVictim.getvalue() as Int ; #DEBUG_LINE_NO:726
  Utility.wait(0.5) ; #DEBUG_LINE_NO:727
  BaboSexlabStatVictim.setvalue(SexLab.Stats.GetInt(SexLab.PlayerRef, "Victim") as Float) ; #DEBUG_LINE_NO:728
  If Victimint < BaboSexlabStatVictim.getvalue() as Int ; #DEBUG_LINE_NO:729
    Self.CalcCorruptionExpGain(1.0) ; #DEBUG_LINE_NO:731
    Self.CalcLewdnessExpGain(1.0) ; #DEBUG_LINE_NO:732
    If anim.hasTag("Creature") || anim.hasTag("Bestiality") || anim.hasTag("Animal") ; #DEBUG_LINE_NO:733
      Self.CalcCreatureTraumaExpGain(1.0) ; #DEBUG_LINE_NO:734
      BaboSexCountCreatureRape.setvalue(BaboSexCountCreatureRape.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:735
    EndIf
    If anim.hasTag("Giant") || anim.hasTag("Lurker") ; #DEBUG_LINE_NO:738
      BaboSexlabStatGiantTrauma.setvalue(BaboSexlabStatGiantTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:739
    ElseIf anim.hasTag("Skeever") ; #DEBUG_LINE_NO:740
      BaboSexlabStatSkeeverTrauma.setvalue(BaboSexlabStatSkeeverTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:741
    ElseIf anim.hasTag("Draugr") || anim.hasTag("Dragonpriest") ; #DEBUG_LINE_NO:742
      BaboSexlabStatDraugrTrauma.setvalue(BaboSexlabStatDraugrTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:743
    ElseIf anim.hasTag("Wolf") || anim.hasTag("Werewolf") || anim.hasTag("Dog") ; #DEBUG_LINE_NO:744
      BaboSexlabStatCanineTrauma.setvalue(BaboSexlabStatCanineTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:745
    ElseIf anim.hasTag("Riekling") ; #DEBUG_LINE_NO:746
      BaboSexlabStatRieklingTrauma.setvalue(BaboSexlabStatRieklingTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:747
    ElseIf anim.hasTag("Sabrecat") || anim.hasTag("Bear") || anim.hasTag("Boar") ; #DEBUG_LINE_NO:748
      BaboSexlabStatBeastTrauma.setvalue(BaboSexlabStatBeastTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:749
    ElseIf anim.hasTag("Falmer") ; #DEBUG_LINE_NO:750
      BaboSexlabStatFalmerTrauma.setvalue(BaboSexlabStatFalmerTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:751
    ElseIf anim.hasTag("Troll") ; #DEBUG_LINE_NO:752
      BaboSexlabStatTrollTrauma.setvalue(BaboSexlabStatTrollTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:753
    ElseIf anim.hasTag("Horse") ; #DEBUG_LINE_NO:754
      BaboSexlabStatHorseTrauma.setvalue(BaboSexlabStatHorseTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:755
    ElseIf anim.hasTag("Chaurus") || anim.hasTag("ChaurusReapers") || anim.hasTag("ChaurusHunter") ; #DEBUG_LINE_NO:756
      BaboSexlabStatChaurusTrauma.setvalue(BaboSexlabStatChaurusTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:757
    ElseIf anim.hasTag("Spider") || anim.hasTag("LargeSpider") || anim.hasTag("GiantSpider") ; #DEBUG_LINE_NO:758
      BaboSexlabStatSpiderTrauma.setvalue(BaboSexlabStatSpiderTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:759
    ElseIf anim.hasTag("Spriggan") ; #DEBUG_LINE_NO:760
      BaboSexlabStatSprigganTrauma.setvalue(BaboSexlabStatSprigganTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:761
    ElseIf anim.hasTag("DwarvenSpider") || anim.hasTag("DwarvenCenturion") || anim.hasTag("DwarvenSphere") ; #DEBUG_LINE_NO:762
      BaboSexlabStatDwarvenTrauma.setvalue(BaboSexlabStatDwarvenTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:763
    ElseIf anim.hasTag("Gargoyle") ; #DEBUG_LINE_NO:764
      BaboSexlabStatGargoyleTrauma.setvalue(BaboSexlabStatGargoyleTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:765
    ElseIf anim.hasTag("FrostAtronach") ; #DEBUG_LINE_NO:766
      BaboSexlabStatFrostAtronachTrauma.setvalue(BaboSexlabStatFrostAtronachTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:767
    ElseIf anim.hasTag("StormAtronach") ; #DEBUG_LINE_NO:768
      BaboSexlabStatStormAtronachTrauma.setvalue(BaboSexlabStatStormAtronachTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:769
    ElseIf anim.hasTag("Horker") ; #DEBUG_LINE_NO:770
      BaboSexlabStatHorkerTrauma.setvalue(BaboSexlabStatHorkerTrauma.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:771
    EndIf
  EndIf
EndFunction

Function BaboOrgasmSeparate(Form ActorRef, Int Thread)
  sslbaseanimation anim = SexLab.HookAnimation(Thread as String) ; #DEBUG_LINE_NO:780
  Actor akactor = ActorRef as Actor ; #DEBUG_LINE_NO:781
  If akactor != PlayerRef ; #DEBUG_LINE_NO:783
    Return  ; #DEBUG_LINE_NO:784
  EndIf
  If anim.hasTag("Creature") || anim.hasTag("Bestiality") || anim.hasTag("Animal") ; #DEBUG_LINE_NO:787
    If anim.hasTag("Vaginal") || anim.hasTag("Anal") ; #DEBUG_LINE_NO:788
      BaboSexlabStatCreaturesCum.setvalue(BaboSexlabStatCreaturesCum.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:790
      If anim.hasTag("Giant") || anim.hasTag("Lurker") ; #DEBUG_LINE_NO:792
        BaboSexlabStatCreaturesGiant.setvalue(BaboSexlabStatCreaturesGiant.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:793
      ElseIf anim.hasTag("Skeever") ; #DEBUG_LINE_NO:795
        BaboSexlabStatCreaturesSkeever.setvalue(BaboSexlabStatCreaturesSkeever.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:796
      ElseIf anim.hasTag("Draugr") || anim.hasTag("Dragonpriest") ; #DEBUG_LINE_NO:798
        BaboSexlabStatCreaturesDraugr.setvalue(BaboSexlabStatCreaturesDraugr.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:799
      ElseIf anim.hasTag("Wolf") || anim.hasTag("Werewolf") || anim.hasTag("Dog") ; #DEBUG_LINE_NO:801
        BaboSexlabStatCreaturesCanine.setvalue(BaboSexlabStatCreaturesCanine.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:802
      ElseIf anim.hasTag("Riekling") ; #DEBUG_LINE_NO:804
        BaboSexlabStatCreaturesRiekling.setvalue(BaboSexlabStatCreaturesRiekling.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:805
      ElseIf anim.hasTag("Sabrecat") || anim.hasTag("Bear") || anim.hasTag("Boar") ; #DEBUG_LINE_NO:807
        BaboSexlabStatCreaturesBeast.setvalue(BaboSexlabStatCreaturesBeast.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:808
      ElseIf anim.hasTag("Falmer") ; #DEBUG_LINE_NO:810
        BaboSexlabStatCreaturesFalmer.setvalue(BaboSexlabStatCreaturesFalmer.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:811
      ElseIf anim.hasTag("Troll") ; #DEBUG_LINE_NO:813
        BaboSexlabStatCreaturesTroll.setvalue(BaboSexlabStatCreaturesTroll.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:814
      ElseIf anim.hasTag("Horse") ; #DEBUG_LINE_NO:816
        BaboSexlabStatCreaturesHorse.setvalue(BaboSexlabStatCreaturesHorse.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:817
      ElseIf anim.hasTag("Chaurus") || anim.hasTag("ChaurusReapers") || anim.hasTag("ChaurusHunter") ; #DEBUG_LINE_NO:819
        BaboSexlabStatCreaturesChaurus.setvalue(BaboSexlabStatCreaturesChaurus.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:820
      ElseIf anim.hasTag("Spriggan") ; #DEBUG_LINE_NO:822
        BaboSexlabStatCreaturesSpriggan.setvalue(BaboSexlabStatCreaturesSpriggan.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:823
      ElseIf anim.hasTag("Spider") || anim.hasTag("LargeSpider") || anim.hasTag("GiantSpider") ; #DEBUG_LINE_NO:825
        BaboSexlabStatCreaturesSpider.setvalue(BaboSexlabStatCreaturesSpider.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:826
      ElseIf anim.hasTag("DwarvenSpider") || anim.hasTag("DwarvenCenturion") || anim.hasTag("DwarvenSphere") ; #DEBUG_LINE_NO:828
        BaboSexlabStatCreaturesDwarven.setvalue(BaboSexlabStatCreaturesDwarven.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:829
      ElseIf anim.hasTag("Gargoyle") ; #DEBUG_LINE_NO:831
        BaboSexlabStatCreaturesGargoyle.setvalue(BaboSexlabStatCreaturesGargoyle.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:832
      ElseIf anim.hasTag("FrostAtronach") ; #DEBUG_LINE_NO:834
        BaboSexlabStatCreaturesFrostAtronach.setvalue(BaboSexlabStatCreaturesFrostAtronach.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:835
      ElseIf anim.hasTag("StormAtronach") ; #DEBUG_LINE_NO:837
        BaboSexlabStatCreaturesStormAtronach.setvalue(BaboSexlabStatCreaturesStormAtronach.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:838
      ElseIf anim.hasTag("Horker") ; #DEBUG_LINE_NO:840
        BaboSexlabStatCreaturesHorker.setvalue(BaboSexlabStatCreaturesHorker.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:841
      EndIf
    EndIf
  EndIf
EndFunction

Function BaboOrgasm(Int Thread, Bool HasPlayer)
  sslbaseanimation anim = SexLab.HookAnimation(Thread as String) ; #DEBUG_LINE_NO:849
  If !HasPlayer ; #DEBUG_LINE_NO:851
    Return  ; #DEBUG_LINE_NO:852
  EndIf
  If anim.hasTag("Creature") || anim.hasTag("Bestiality") || anim.hasTag("Animal") ; #DEBUG_LINE_NO:855
    If anim.hasTag("Vaginal") || anim.hasTag("Anal") ; #DEBUG_LINE_NO:856
      BaboSexlabStatCreaturesCum.setvalue(BaboSexlabStatCreaturesCum.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:858
      If anim.hasTag("Giant") || anim.hasTag("Lurker") ; #DEBUG_LINE_NO:860
        BaboSexlabStatCreaturesGiant.setvalue(BaboSexlabStatCreaturesGiant.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:861
      ElseIf anim.hasTag("Skeever") ; #DEBUG_LINE_NO:863
        BaboSexlabStatCreaturesSkeever.setvalue(BaboSexlabStatCreaturesSkeever.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:864
      ElseIf anim.hasTag("Draugr") || anim.hasTag("Dragonpriest") ; #DEBUG_LINE_NO:866
        BaboSexlabStatCreaturesDraugr.setvalue(BaboSexlabStatCreaturesDraugr.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:867
      ElseIf anim.hasTag("Wolf") || anim.hasTag("Werewolf") || anim.hasTag("Dog") ; #DEBUG_LINE_NO:869
        BaboSexlabStatCreaturesCanine.setvalue(BaboSexlabStatCreaturesCanine.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:870
      ElseIf anim.hasTag("Riekling") ; #DEBUG_LINE_NO:872
        BaboSexlabStatCreaturesRiekling.setvalue(BaboSexlabStatCreaturesRiekling.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:873
      ElseIf anim.hasTag("Sabrecat") || anim.hasTag("Bear") || anim.hasTag("Boar") ; #DEBUG_LINE_NO:875
        BaboSexlabStatCreaturesBeast.setvalue(BaboSexlabStatCreaturesBeast.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:876
      ElseIf anim.hasTag("Falmer") ; #DEBUG_LINE_NO:878
        BaboSexlabStatCreaturesFalmer.setvalue(BaboSexlabStatCreaturesFalmer.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:879
      ElseIf anim.hasTag("Troll") ; #DEBUG_LINE_NO:881
        BaboSexlabStatCreaturesTroll.setvalue(BaboSexlabStatCreaturesTroll.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:882
      ElseIf anim.hasTag("Horse") ; #DEBUG_LINE_NO:884
        BaboSexlabStatCreaturesHorse.setvalue(BaboSexlabStatCreaturesHorse.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:885
      ElseIf anim.hasTag("Chaurus") || anim.hasTag("ChaurusReapers") || anim.hasTag("ChaurusHunter") ; #DEBUG_LINE_NO:887
        BaboSexlabStatCreaturesChaurus.setvalue(BaboSexlabStatCreaturesChaurus.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:888
      ElseIf anim.hasTag("Spriggan") ; #DEBUG_LINE_NO:890
        BaboSexlabStatCreaturesSpriggan.setvalue(BaboSexlabStatCreaturesSpriggan.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:891
      ElseIf anim.hasTag("Spider") || anim.hasTag("LargeSpider") || anim.hasTag("GiantSpider") ; #DEBUG_LINE_NO:893
        BaboSexlabStatCreaturesSpider.setvalue(BaboSexlabStatCreaturesSpider.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:894
      ElseIf anim.hasTag("DwarvenSpider") || anim.hasTag("DwarvenCenturion") || anim.hasTag("DwarvenSphere") ; #DEBUG_LINE_NO:896
        BaboSexlabStatCreaturesDwarven.setvalue(BaboSexlabStatCreaturesDwarven.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:897
      ElseIf anim.hasTag("Gargoyle") ; #DEBUG_LINE_NO:899
        BaboSexlabStatCreaturesGargoyle.setvalue(BaboSexlabStatCreaturesGargoyle.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:900
      ElseIf anim.hasTag("FrostAtronach") ; #DEBUG_LINE_NO:902
        BaboSexlabStatCreaturesFrostAtronach.setvalue(BaboSexlabStatCreaturesFrostAtronach.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:903
      ElseIf anim.hasTag("StormAtronach") ; #DEBUG_LINE_NO:905
        BaboSexlabStatCreaturesStormAtronach.setvalue(BaboSexlabStatCreaturesStormAtronach.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:906
      ElseIf anim.hasTag("Horker") ; #DEBUG_LINE_NO:908
        BaboSexlabStatCreaturesHorker.setvalue(BaboSexlabStatCreaturesHorker.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:909
      EndIf
    EndIf
  EndIf
EndFunction

Function SLHHRegisterAnimationEvent()
  Self.RegisterForAnimationEvent(PlayerRef as ObjectReference, "Babo_DeathLoop") ; #DEBUG_LINE_NO:918
  Self.RegisterForAnimationEvent(PlayerRef as ObjectReference, "Babo_Drunk_SBD_A01Loop") ; #DEBUG_LINE_NO:919
  Self.RegisterForAnimationEvent(PlayerRef as ObjectReference, "Babo_Struggle_S04_A01") ; #DEBUG_LINE_NO:920
  Self.RegisterForAnimationEvent(PlayerRef as ObjectReference, "Babo_Struggle_S05_A01") ; #DEBUG_LINE_NO:921
  Self.RegisterForAnimationEvent(PlayerRef as ObjectReference, "Babo_Drunk_S04_A01") ; #DEBUG_LINE_NO:922
  Self.RegisterForAnimationEvent(PlayerRef as ObjectReference, "Babo_Drunk_S05_A01") ; #DEBUG_LINE_NO:923
  Self.RegisterForAnimationEvent(PlayerRef as ObjectReference, "Babo_ChokeHug_S04_A01") ; #DEBUG_LINE_NO:924
  Self.RegisterForAnimationEvent(PlayerRef as ObjectReference, "Babo_ChokeHug_S05_A01") ; #DEBUG_LINE_NO:925
  Self.RegisterForAnimationEvent(PlayerRef as ObjectReference, "Babo_Troll_S04_A01") ; #DEBUG_LINE_NO:926
  Self.RegisterForAnimationEvent(PlayerRef as ObjectReference, "Babo_Troll_S05_A01") ; #DEBUG_LINE_NO:927
  Self.RegisterForAnimationEvent(PlayerRef as ObjectReference, "Babo_Riekling_S04_A01") ; #DEBUG_LINE_NO:928
  Self.RegisterForAnimationEvent(PlayerRef as ObjectReference, "Babo_RieklingQTE_S01_A01") ; #DEBUG_LINE_NO:929
EndFunction

Function UpdateKeyRegistery()
  Self.UnregisterForAllKeys() ; #DEBUG_LINE_NO:933
  If BDConfig.NotificationKey != -1 ; #DEBUG_LINE_NO:934
    Self.RegisterForKey(BDConfig.NotificationKey) ; #DEBUG_LINE_NO:935
    Debug.trace((Self as String + ": Updated notification key to ") + BDConfig.NotificationKey as String, 0) ; #DEBUG_LINE_NO:936
  EndIf
EndFunction

Bool Function EnthrallMerchants(Actor akactor)
  If akactor as Bool && !akactor.isincombat() ; #DEBUG_LINE_NO:941
    If akactor.isinfaction(JobMerchantFaction) ; #DEBUG_LINE_NO:942
      Self.EnthrallAnimationPlay(akactor) ; #DEBUG_LINE_NO:944
      EnthrallMerchantSpell.Cast(akactor as ObjectReference, None) ; #DEBUG_LINE_NO:945
      BaboSeducingAttemptCount.setvalue(BaboSeducingAttemptCount.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:946
      BaboSeducingMerchantAttemptCount.setvalue(BaboSeducingMerchantAttemptCount.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:947
      BRMQuest.IncreaseReputationBitch(1 as Float) ; #DEBUG_LINE_NO:948
      Return True ; #DEBUG_LINE_NO:949
    ElseIf akactor.isinfaction(PotentialHireling) ; #DEBUG_LINE_NO:950
      Self.EnthrallAnimationPlay(akactor) ; #DEBUG_LINE_NO:951
      EnthrallMerchantSpell.Cast(akactor as ObjectReference, None) ; #DEBUG_LINE_NO:952
      BaboSeducingAttemptCount.setvalue(BaboSeducingAttemptCount.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:953
      BaboSeducingMercenaryAttemptCount.setvalue(BaboSeducingMercenaryAttemptCount.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:954
      BaboDialogueHirelings.Startthequest() ; #DEBUG_LINE_NO:955
      BRMQuest.IncreaseReputationBitch(1 as Float) ; #DEBUG_LINE_NO:956
    EndIf
  Else
    (BaboSexController as babosexcontrollermanager).MonitorMessagebox(1) ; #DEBUG_LINE_NO:959
  EndIf
  Return False ; #DEBUG_LINE_NO:962
EndFunction

Function EnthrallAnimationPlay(Actor akactor)
  Debug.SendAnimationEvent(akactor as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:966
  Utility.wait(1.0) ; #DEBUG_LINE_NO:967
  akactor.setlookat(PlayerRef as ObjectReference, True) ; #DEBUG_LINE_NO:968
  Utility.wait(2.0) ; #DEBUG_LINE_NO:969
  Int random = Utility.RandomInt(1, 5) ; #DEBUG_LINE_NO:970
  If random == 1 ; #DEBUG_LINE_NO:971
    Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboAllurePussyShowing01") ; #DEBUG_LINE_NO:972
    Debug.SendAnimationEvent(akactor as ObjectReference, "BaboAllureManPussyResponse01") ; #DEBUG_LINE_NO:973
  ElseIf random == 2 ; #DEBUG_LINE_NO:974
    Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboAllureBreastShowing01") ; #DEBUG_LINE_NO:975
    Debug.SendAnimationEvent(akactor as ObjectReference, "BaboAllureManBreastResponse01") ; #DEBUG_LINE_NO:976
  ElseIf random == 3 ; #DEBUG_LINE_NO:977
    Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboAllureBreastShowing02") ; #DEBUG_LINE_NO:978
    Debug.SendAnimationEvent(akactor as ObjectReference, "BaboAllureManBreastResponse01") ; #DEBUG_LINE_NO:979
  ElseIf random == 4 ; #DEBUG_LINE_NO:980
    Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboAllureSeducingkiss01") ; #DEBUG_LINE_NO:981
    Debug.SendAnimationEvent(akactor as ObjectReference, "IdleExamine") ; #DEBUG_LINE_NO:982
  ElseIf random == 5 ; #DEBUG_LINE_NO:983
    Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboAllureSeducingkiss02") ; #DEBUG_LINE_NO:984
    Debug.SendAnimationEvent(akactor as ObjectReference, "IdleExamine") ; #DEBUG_LINE_NO:985
  EndIf
EndFunction

Function BeginUpdates()
  LastUpdate = GameDaysPassed.getvalue() ; #DEBUG_LINE_NO:991
  Self.RegisterForSingleUpdateGameTime(1.0) ; #DEBUG_LINE_NO:992
EndFunction

Event OnUpdateGameTime()
  ; Fail-safe: never leave Acheron suspended once Babo has handed control back
  ; (self-heals a missed resume, including on save reload).
  (BaboSexController as babosexcontrollermanager).ReconcileAcheron() ; #DEBUG_LINE_NO:995
  Self.DoUpdate() ; #DEBUG_LINE_NO:996
  Self.DoStatus() ; #DEBUG_LINE_NO:997
EndEvent

Function DoStatus()
  If BaboFHU.getvalue() == 1 as Float ; #DEBUG_LINE_NO:1006
    SR_InflateFaction = Game.GetFormFromFile(43409, "sr_FillHerUp.esp") as Faction ; #DEBUG_LINE_NO:1007
    InflationFloat = PlayerRef.getfactionrank(SR_InflateFaction) as Float ; #DEBUG_LINE_NO:1008
    If InflationFloat < 5 as Float ; #DEBUG_LINE_NO:1010
      BaboSexlabStatusFHU.setvalue(0 as Float) ; #DEBUG_LINE_NO:1011
    ElseIf (InflationFloat >= 5 as Float) && (InflationFloat < 20 as Float) ; #DEBUG_LINE_NO:1012
      BaboSexlabStatusFHU.setvalue(1 as Float) ; #DEBUG_LINE_NO:1013
    ElseIf (InflationFloat >= 20 as Float) && (InflationFloat < 40 as Float) ; #DEBUG_LINE_NO:1014
      BaboSexlabStatusFHU.setvalue(2 as Float) ; #DEBUG_LINE_NO:1015
    ElseIf (InflationFloat >= 40 as Float) && (InflationFloat < 60 as Float) ; #DEBUG_LINE_NO:1016
      BaboSexlabStatusFHU.setvalue(3 as Float) ; #DEBUG_LINE_NO:1017
    ElseIf (InflationFloat >= 60 as Float) && (InflationFloat < 80 as Float) ; #DEBUG_LINE_NO:1018
      BaboSexlabStatusFHU.setvalue(4 as Float) ; #DEBUG_LINE_NO:1019
    ElseIf InflationFloat >= 80 as Float ; #DEBUG_LINE_NO:1020
      BaboSexlabStatusFHU.setvalue(5 as Float) ; #DEBUG_LINE_NO:1021
    EndIf
    PlayerRef.setfactionrank(SLAX_CumFilledFaction, BaboSexlabStatusFHU.getvalue() as Int) ; #DEBUG_LINE_NO:1023
  EndIf
  Self.ExportStatus() ; #DEBUG_LINE_NO:1025
  Self.ImportStatus() ; #DEBUG_LINE_NO:1026
EndFunction

Function AdjustSexlabStats(Actor ActorRef, String Name, Int AdjustBy)
  SexLab.Stats.AdjustBy(ActorRef, Name, AdjustBy) ; #DEBUG_LINE_NO:1048
EndFunction

Function DoUpdate()
  BaboDetectSpectatorKeyword.SendStoryEvent(None, PlayerRef as ObjectReference, None, 0, 0) ; #DEBUG_LINE_NO:1052
  Utility.wait(5.0) ; #DEBUG_LINE_NO:1054
  If BaboDebugging.getvalue() == 1 as Float ; #DEBUG_LINE_NO:1055
    Debug.notification("DoUpdate") ; #DEBUG_LINE_NO:1056
    Debug.notification(BaboDetectSpectatorQuest.getalias(0).getname()) ; #DEBUG_LINE_NO:1057
  EndIf
  akAM01 = (BaboDetectSpectatorQuest.getalias(1) as ReferenceAlias).GetReference() as Actor ; #DEBUG_LINE_NO:1060
  akAM02 = (BaboDetectSpectatorQuest.getalias(2) as ReferenceAlias).GetReference() as Actor ; #DEBUG_LINE_NO:1061
  akAM03 = (BaboDetectSpectatorQuest.getalias(3) as ReferenceAlias).GetReference() as Actor ; #DEBUG_LINE_NO:1062
  akAF01 = (BaboDetectSpectatorQuest.getalias(4) as ReferenceAlias).GetReference() as Actor ; #DEBUG_LINE_NO:1063
  Alias_ViceCaptain = BaboDetectSpectatorQuest.getalias(5) as ReferenceAlias ; #DEBUG_LINE_NO:1064
  ViceCaptain = Alias_ViceCaptain.GetReference() as Actor ; #DEBUG_LINE_NO:1065
  Int HowManyPeople = 0 ; #DEBUG_LINE_NO:1067
  If akAM01 ; #DEBUG_LINE_NO:1068
    HowManyPeople += 1 ; #DEBUG_LINE_NO:1069
  EndIf
  If akAM02 ; #DEBUG_LINE_NO:1071
    HowManyPeople += 1 ; #DEBUG_LINE_NO:1072
  EndIf
  If akAM03 ; #DEBUG_LINE_NO:1074
    HowManyPeople += 1 ; #DEBUG_LINE_NO:1075
  EndIf
  If ViceCaptain ; #DEBUG_LINE_NO:1077
    If BaboDebugging.getvalue() == 1 as Float ; #DEBUG_LINE_NO:1078
      Debug.notification("ViceCaptain") ; #DEBUG_LINE_NO:1079
    EndIf
    If BaboDialogueWhiterun.getstage() >= 30 && BaboDialogueWhiterun.getstage() < 65 ; #DEBUG_LINE_NO:1081
      If ViceCaptain.getactorvalue("Variable06") == 4 as Float ; #DEBUG_LINE_NO:1082
        (BaboBoyFriendVariableSetting as baboboyfriendvariablescript).ViceCaptainRefreshPackage() ; #DEBUG_LINE_NO:1083
      EndIf
    EndIf
  EndIf
  BRMQuest.DecreaseReputationBitch(1 as Float) ; #DEBUG_LINE_NO:1088
  BaboDetectSpectatorHowMany.setvalue(HowManyPeople as Float) ; #DEBUG_LINE_NO:1089
  If (_SLS_BikiniArmor as Bool && PlayerRef.WornHasKeyword(_SLS_BikiniArmor)) || PlayerRef.WornHasKeyword(SLA_ArmorPretty) || PlayerRef.WornHasKeyword(EroticArmor) || PlayerRef.WornHasKeyword(SLA_ArmorSpendex) || PlayerRef.WornHasKeyword(SLA_ArmorHalfNakedBikini) || PlayerRef.WornHasKeyword(SLA_ArmorLewdLeotard) || PlayerRef.WornHasKeyword(SLA_ArmorCurtain) || PlayerRef.WornHasKeyword(SLA_ArmorHalfNaked) || PlayerRef.WornHasKeyword(SLA_ArmorTransparent) ; #DEBUG_LINE_NO:1091
    Self.CalcExpGain() ; #DEBUG_LINE_NO:1092
  ElseIf PlayerRef.WornHasKeyword(Armorcuirass) || PlayerRef.WornHasKeyword(ClothingBody) ; #DEBUG_LINE_NO:1093
    Self.CalcExpLoss() ; #DEBUG_LINE_NO:1094
  ElseIf !PlayerRef.WornHasKeyword(Armorcuirass) && !PlayerRef.WornHasKeyword(ClothingBody) ; #DEBUG_LINE_NO:1095
    Self.CalcExpNakedGain() ; #DEBUG_LINE_NO:1096
  EndIf
  Self.CalcLevel() ; #DEBUG_LINE_NO:1099
  Self.SkyrimAchievement() ; #DEBUG_LINE_NO:1100
  LastUpdate = GameDaysPassed.getvalue() ; #DEBUG_LINE_NO:1101
  Self.RegisterForSingleUpdateGameTime(BaboDetectSpectatorUpdateInterval.getvalue()) ; #DEBUG_LINE_NO:1102
EndFunction

Function CalcExpNakedGain()
  If akAM01 ; #DEBUG_LINE_NO:1122
    ExhibitionistExp += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * (BaboSexlabStatExhibitionistSpeed.getvalue() * 3 as Float) ; #DEBUG_LINE_NO:1123
    Self.CalcLewdnessExpGain(3.0) ; #DEBUG_LINE_NO:1124
    BRMQuest.IncreaseReputationBitch(1 as Float) ; #DEBUG_LINE_NO:1126
  EndIf
  If akAM02 as Bool && akAM03 as Bool ; #DEBUG_LINE_NO:1129
    ExhibitionistExp *= 3 as Float ; #DEBUG_LINE_NO:1130
    Self.CalcLewdnessExpGain(2.0) ; #DEBUG_LINE_NO:1131
    BRMQuest.IncreaseReputationBitch(2 as Float) ; #DEBUG_LINE_NO:1132
  ElseIf akAM02 as Bool || akAM03 as Bool ; #DEBUG_LINE_NO:1133
    ExhibitionistExp *= 2 as Float ; #DEBUG_LINE_NO:1134
    Self.CalcLewdnessExpGain(1.0) ; #DEBUG_LINE_NO:1135
    BRMQuest.IncreaseReputationBitch(1 as Float) ; #DEBUG_LINE_NO:1136
  EndIf
EndFunction

Function CalcExpGain()
  Float ExhibitionistExpT = 0.0 ; #DEBUG_LINE_NO:1141
  Float LewdnessExpT = 0.0 ; #DEBUG_LINE_NO:1142
  Float ReputationBitchT = 0.0 ; #DEBUG_LINE_NO:1143
  Float GetRepFloat = 0.0 ; #DEBUG_LINE_NO:1144
  If PlayerRef.WornHasKeyword(SLA_BraBikini) && !PlayerRef.WornHasKeyword(SLA_PantyNormal) && !PlayerRef.WornHasKeyword(SLA_ThongCString) && !PlayerRef.WornHasKeyword(SLA_ThongLowleg) && !PlayerRef.WornHasKeyword(SLA_ThongT) && !PlayerRef.WornHasKeyword(SLA_ThongGString) && !PlayerRef.WornHasKeyword(SLA_PantsNormal) && !PlayerRef.WornHasKeyword(SLA_MicroHotpants) ; #DEBUG_LINE_NO:1146
    ExhibitionistExpT += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatExhibitionistSpeed.getvalue() * 1.399999976 ; #DEBUG_LINE_NO:1147
  EndIf
  If PlayerRef.WornHasKeyword(SLA_ArmorHalfNaked) || PlayerRef.WornHasKeyword(SLA_ArmorTransparent) ; #DEBUG_LINE_NO:1150
    BikExp += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatSkimpySpeed.getvalue() * 1.5 ; #DEBUG_LINE_NO:1151
  ElseIf PlayerRef.WornHasKeyword(SLA_ArmorHalfNakedBikini) || PlayerRef.WornHasKeyword(SLA_ArmorCurtain) ; #DEBUG_LINE_NO:1152
    BikExp += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatSkimpySpeed.getvalue() * 1.299999952 ; #DEBUG_LINE_NO:1153
  ElseIf PlayerRef.WornHasKeyword(SLA_ArmorSpendex) || PlayerRef.WornHasKeyword(SLA_ArmorLewdLeotard) ; #DEBUG_LINE_NO:1154
    BikExp += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatSkimpySpeed.getvalue() * 1.100000024 ; #DEBUG_LINE_NO:1155
  ElseIf PlayerRef.WornHasKeyword(EroticArmor) ; #DEBUG_LINE_NO:1156
    BikExp += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatSkimpySpeed.getvalue() * 1.0 ; #DEBUG_LINE_NO:1157
  ElseIf PlayerRef.WornHasKeyword(SLA_ArmorPretty) ; #DEBUG_LINE_NO:1158
    BikExp += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatSkimpySpeed.getvalue() * 0.800000012 ; #DEBUG_LINE_NO:1159
  ElseIf _SLS_BikiniArmor as Bool && PlayerRef.WornHasKeyword(_SLS_BikiniArmor) ; #DEBUG_LINE_NO:1160
    BikExp += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatSkimpySpeed.getvalue() ; #DEBUG_LINE_NO:1161
  EndIf
  If akAM01 ; #DEBUG_LINE_NO:1164
    If PlayerRef.WornHasKeyword(SLA_ArmorHalfNaked) || PlayerRef.WornHasKeyword(SLA_ArmorTransparent) ; #DEBUG_LINE_NO:1165
      ExhibitionistExpT += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * (BaboSexlabStatExhibitionistSpeed.getvalue() * 2 as Float) ; #DEBUG_LINE_NO:1166
      LewdnessExpT += 2.0 ; #DEBUG_LINE_NO:1167
      ReputationBitchT += 3.0 ; #DEBUG_LINE_NO:1168
    ElseIf PlayerRef.WornHasKeyword(SLA_ArmorHalfNakedBikini) || PlayerRef.WornHasKeyword(SLA_ArmorCurtain) ; #DEBUG_LINE_NO:1169
      ExhibitionistExpT += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatExhibitionistSpeed.getvalue() * 1.299999952 ; #DEBUG_LINE_NO:1170
      LewdnessExpT += 1.200000048 ; #DEBUG_LINE_NO:1171
      ReputationBitchT += 2.0 ; #DEBUG_LINE_NO:1172
    ElseIf PlayerRef.WornHasKeyword(SLA_ArmorSpendex) || PlayerRef.WornHasKeyword(SLA_ArmorLewdLeotard) ; #DEBUG_LINE_NO:1173
      ExhibitionistExpT += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatExhibitionistSpeed.getvalue() * 1.149999976 ; #DEBUG_LINE_NO:1174
      LewdnessExpT += 0.5 ; #DEBUG_LINE_NO:1175
      ReputationBitchT += 1.5 ; #DEBUG_LINE_NO:1176
    ElseIf PlayerRef.WornHasKeyword(EroticArmor) ; #DEBUG_LINE_NO:1177
      ExhibitionistExpT += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatExhibitionistSpeed.getvalue() * 1.100000024 ; #DEBUG_LINE_NO:1178
      LewdnessExpT += 1.0 ; #DEBUG_LINE_NO:1179
      ReputationBitchT += 1.0 ; #DEBUG_LINE_NO:1180
    EndIf
    If BaboPlayerPubicHair.getvalue() >= 1 as Float ; #DEBUG_LINE_NO:1183
      If PlayerRef.WornHasKeyword(SLA_ThongCString) ; #DEBUG_LINE_NO:1184
        ExhibitionistExpT += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatExhibitionistSpeed.getvalue() * 1.299999952 ; #DEBUG_LINE_NO:1185
        LewdnessExpT += 0.800000012 ; #DEBUG_LINE_NO:1186
      ElseIf PlayerRef.WornHasKeyword(SLA_ThongLowleg) || PlayerRef.WornHasKeyword(SLA_ThongGString) ; #DEBUG_LINE_NO:1187
        ExhibitionistExpT += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatExhibitionistSpeed.getvalue() * 1.25 ; #DEBUG_LINE_NO:1188
        LewdnessExpT += 0.600000024 ; #DEBUG_LINE_NO:1189
      ElseIf PlayerRef.WornHasKeyword(SLA_ThongT) || PlayerRef.WornHasKeyword(SLA_MicroHotpants) ; #DEBUG_LINE_NO:1190
        ExhibitionistExpT += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatExhibitionistSpeed.getvalue() * 1.100000024 ; #DEBUG_LINE_NO:1191
        LewdnessExpT += 0.400000006 ; #DEBUG_LINE_NO:1192
      EndIf
    ElseIf PlayerRef.WornHasKeyword(SLA_ThongCString) ; #DEBUG_LINE_NO:1195
      ExhibitionistExpT += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatExhibitionistSpeed.getvalue() * 1.149999976 ; #DEBUG_LINE_NO:1196
      LewdnessExpT += 0.699999988 ; #DEBUG_LINE_NO:1197
    ElseIf PlayerRef.WornHasKeyword(SLA_ThongLowleg) || PlayerRef.WornHasKeyword(SLA_ThongGString) ; #DEBUG_LINE_NO:1198
      ExhibitionistExpT += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatExhibitionistSpeed.getvalue() * 1.100000024 ; #DEBUG_LINE_NO:1199
      LewdnessExpT += 0.5 ; #DEBUG_LINE_NO:1200
    ElseIf PlayerRef.WornHasKeyword(SLA_ThongT) || PlayerRef.WornHasKeyword(SLA_MicroHotpants) ; #DEBUG_LINE_NO:1201
      ExhibitionistExpT += (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatExhibitionistSpeed.getvalue() * 1.049999952 ; #DEBUG_LINE_NO:1202
      LewdnessExpT += 0.300000012 ; #DEBUG_LINE_NO:1203
    EndIf
    If akAM02 as Bool && akAM03 as Bool ; #DEBUG_LINE_NO:1207
      ExhibitionistExpT *= 3 as Float ; #DEBUG_LINE_NO:1208
      LewdnessExpT *= 3 as Float ; #DEBUG_LINE_NO:1209
      ReputationBitchT *= 3 as Float ; #DEBUG_LINE_NO:1210
    ElseIf akAM02 as Bool || akAM03 as Bool ; #DEBUG_LINE_NO:1211
      ExhibitionistExpT *= 2 as Float ; #DEBUG_LINE_NO:1212
      LewdnessExpT *= 2 as Float ; #DEBUG_LINE_NO:1213
      ReputationBitchT *= 2 as Float ; #DEBUG_LINE_NO:1214
    EndIf
  EndIf
  GetRepFloat += BaboPlayerAppearanceValue.getvalue() / 2 as Float ; #DEBUG_LINE_NO:1217
  GetRepFloat += BaboPlayerBreastsValue.getvalue() / 5 as Float ; #DEBUG_LINE_NO:1218
  GetRepFloat += BaboPlayerButtocksValue.getvalue() / 6 as Float ; #DEBUG_LINE_NO:1219
  If GetRepFloat as Int >= Utility.RandomInt(0, 100) ; #DEBUG_LINE_NO:1221
    BRMQuest.IncreaseReputationBitchbyExposure(ReputationBitchT) ; #DEBUG_LINE_NO:1222
  EndIf
  ExhibitionistExp += ExhibitionistExpT ; #DEBUG_LINE_NO:1225
  If BaboSexlabStatLewdness.getvalue() < 40 as Float ; #DEBUG_LINE_NO:1226
    Self.CalcLewdnessExpGain(LewdnessExpT) ; #DEBUG_LINE_NO:1227
  EndIf
  If BikExp > ExpPerLevel * 7.5 ; #DEBUG_LINE_NO:1229
    BikExp = ExpPerLevel * 7.5 ; #DEBUG_LINE_NO:1230
  EndIf
EndFunction

Function CalcCreatureTraumaExpGain(Float Mult)
  BaboSexlabStatCreatureTrauma.setvalue(BaboSexlabStatCreatureTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1236
EndFunction

Function CalcCreatureTraumaExpLoss(Float Mult)
  BaboSexlabStatCreatureTrauma.setvalue(BaboSexlabStatCreatureTrauma.getvalue() - Mult) ; #DEBUG_LINE_NO:1240
EndFunction

Function CalcCorruptionExpGain(Float Mult)
  BaboSexlabStatCorruption.mod(BaboSexlabStatCorruptionSpeed.value * Mult) ; #DEBUG_LINE_NO:1244
  If BaboSexlabStatCorruption.getvalue() > 50 as Float ; #DEBUG_LINE_NO:1245
    BaboSexlabStatCorruption.setvalue(50 as Float) ; #DEBUG_LINE_NO:1246
  ElseIf BaboSexlabStatCorruption.getvalue() < 0 as Float ; #DEBUG_LINE_NO:1247
    BaboSexlabStatCorruption.setvalue(0 as Float) ; #DEBUG_LINE_NO:1248
  EndIf
  Self.CorruptionFinalCheck() ; #DEBUG_LINE_NO:1250
EndFunction

Function CalcCorruptionExpLoss(Float Mult)
  BaboSexlabStatCorruption.setvalue(BaboSexlabStatCorruption.getvalue() - BaboSexlabStatCorruptionSpeed.getvalue() * Mult) ; #DEBUG_LINE_NO:1254
  If BaboSexlabStatCorruption.getvalue() < 0 as Float ; #DEBUG_LINE_NO:1255
    BaboSexlabStatCorruption.setvalue(0 as Float) ; #DEBUG_LINE_NO:1256
  EndIf
  Self.CorruptionFinalCheck() ; #DEBUG_LINE_NO:1258
EndFunction

Function CorruptionFinalCheck()
  Int Stat = BaboSexlabStatCorruption.getvalue() as Int ; #DEBUG_LINE_NO:1262
  If Stat <= 5 ; #DEBUG_LINE_NO:1264
    PlayerRef.setfactionrank(SLAX_SubmissiveFaction, 0) ; #DEBUG_LINE_NO:1265
    PlayerRef.setfactionrank(BaboFactionStatCorruption, 0) ; #DEBUG_LINE_NO:1266
  ElseIf Stat <= 10 ; #DEBUG_LINE_NO:1267
    PlayerRef.setfactionrank(SLAX_SubmissiveFaction, 1) ; #DEBUG_LINE_NO:1268
    PlayerRef.setfactionrank(BaboFactionStatCorruption, 1) ; #DEBUG_LINE_NO:1269
  ElseIf Stat <= 20 ; #DEBUG_LINE_NO:1270
    PlayerRef.setfactionrank(SLAX_SubmissiveFaction, 2) ; #DEBUG_LINE_NO:1271
    PlayerRef.setfactionrank(BaboFactionStatCorruption, 2) ; #DEBUG_LINE_NO:1272
  ElseIf Stat <= 30 ; #DEBUG_LINE_NO:1273
    PlayerRef.setfactionrank(SLAX_SubmissiveFaction, 3) ; #DEBUG_LINE_NO:1274
    PlayerRef.setfactionrank(BaboFactionStatCorruption, 3) ; #DEBUG_LINE_NO:1275
  ElseIf Stat <= 40 ; #DEBUG_LINE_NO:1276
    PlayerRef.setfactionrank(SLAX_SubmissiveFaction, 4) ; #DEBUG_LINE_NO:1277
    PlayerRef.setfactionrank(BaboFactionStatCorruption, 4) ; #DEBUG_LINE_NO:1278
  ElseIf Stat <= 50 ; #DEBUG_LINE_NO:1279
    PlayerRef.setfactionrank(SLAX_SubmissiveFaction, 5) ; #DEBUG_LINE_NO:1280
    PlayerRef.setfactionrank(BaboFactionStatCorruption, 5) ; #DEBUG_LINE_NO:1281
  EndIf
EndFunction

Function CalcConfidenceExpGain(Float Mult)
  BaboSexlabStatConfidenceWill.mod(Mult) ; #DEBUG_LINE_NO:1287
  If BaboSexlabStatConfidenceWill.getvalue() > 100 as Float ; #DEBUG_LINE_NO:1288
    BaboSexlabStatConfidenceWill.setvalue(100 as Float) ; #DEBUG_LINE_NO:1289
  ElseIf BaboSexlabStatConfidenceWill.getvalue() < 0 as Float ; #DEBUG_LINE_NO:1290
    BaboSexlabStatConfidenceWill.setvalue(0 as Float) ; #DEBUG_LINE_NO:1291
  EndIf
  Self.WillFinalCheck() ; #DEBUG_LINE_NO:1293
EndFunction

Function CalcTraumaExpGain(Float Mult)
  BaboSexlabStatTrauma.mod(Mult) ; #DEBUG_LINE_NO:1297
  If BaboSexlabStatTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1298
    BaboSexlabStatTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1299
  ElseIf BaboSexlabStatTrauma.getvalue() < 0 as Float ; #DEBUG_LINE_NO:1300
    BaboSexlabStatTrauma.setvalue(0 as Float) ; #DEBUG_LINE_NO:1301
  EndIf
  Self.WillFinalCheck() ; #DEBUG_LINE_NO:1303
EndFunction

Function CalcTraumaExpLoss(Float Mult)
  BaboSexlabStatTrauma.setvalue(BaboSexlabStatTrauma.getvalue() - Mult) ; #DEBUG_LINE_NO:1307
  If BaboSexlabStatTrauma.getvalue() < 0 as Float ; #DEBUG_LINE_NO:1308
    BaboSexlabStatTrauma.setvalue(0 as Float) ; #DEBUG_LINE_NO:1309
  EndIf
  Self.WillFinalCheck() ; #DEBUG_LINE_NO:1311
EndFunction

Function CalcGiantTraumaExpGain(Float Mult)
  BaboSexlabStatGiantTrauma.setvalue(BaboSexlabStatGiantTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1315
  If BaboSexlabStatGiantTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1316
    BaboSexlabStatGiantTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1317
  EndIf
EndFunction

Function CalcSkeeverTraumaExpGain(Float Mult)
  BaboSexlabStatSkeeverTrauma.setvalue(BaboSexlabStatSkeeverTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1322
  If BaboSexlabStatSkeeverTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1323
    BaboSexlabStatSkeeverTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1324
  EndIf
EndFunction

Function CalcDraugrTraumaExpGain(Float Mult)
  BaboSexlabStatDraugrTrauma.setvalue(BaboSexlabStatDraugrTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1329
  If BaboSexlabStatDraugrTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1330
    BaboSexlabStatDraugrTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1331
  EndIf
EndFunction

Function CalcCanineTraumaExpGain(Float Mult)
  BaboSexlabStatCanineTrauma.setvalue(BaboSexlabStatCanineTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1336
  If BaboSexlabStatCanineTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1337
    BaboSexlabStatCanineTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1338
  EndIf
EndFunction

Function CalcRieklingTraumaExpGain(Float Mult)
  BaboSexlabStatRieklingTrauma.mod(Mult) ; #DEBUG_LINE_NO:1343
  If BaboSexlabStatRieklingTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1344
    BaboSexlabStatRieklingTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1345
  EndIf
EndFunction

Function CalcBeastTraumaExpGain(Float Mult)
  BaboSexlabStatBeastTrauma.setvalue(BaboSexlabStatBeastTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1350
  If BaboSexlabStatBeastTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1351
    BaboSexlabStatBeastTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1352
  EndIf
EndFunction

Function CalcFalmerTraumaExpGain(Float Mult)
  BaboSexlabStatFalmerTrauma.setvalue(BaboSexlabStatFalmerTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1357
  If BaboSexlabStatFalmerTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1358
    BaboSexlabStatFalmerTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1359
  EndIf
EndFunction

Function CalcTrollTraumaExpGain(Float Mult)
  BaboSexlabStatTrollTrauma.setvalue(BaboSexlabStatTrollTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1364
  If BaboSexlabStatTrollTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1365
    BaboSexlabStatTrollTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1366
  EndIf
EndFunction

Function CalcHorseTraumaExpGain(Float Mult)
  BaboSexlabStatHorseTrauma.setvalue(BaboSexlabStatHorseTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1371
  If BaboSexlabStatHorseTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1372
    BaboSexlabStatHorseTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1373
  EndIf
EndFunction

Function CalcChaurusTraumaExpGain(Float Mult)
  BaboSexlabStatChaurusTrauma.setvalue(BaboSexlabStatChaurusTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1378
  If BaboSexlabStatChaurusTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1379
    BaboSexlabStatChaurusTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1380
  EndIf
EndFunction

Function CalcSpiderTraumaExpGain(Float Mult)
  BaboSexlabStatSpiderTrauma.setvalue(BaboSexlabStatSpiderTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1385
  If BaboSexlabStatSpiderTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1386
    BaboSexlabStatSpiderTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1387
  EndIf
EndFunction

Function CalcSprigganTraumaExpGain(Float Mult)
  BaboSexlabStatSprigganTrauma.setvalue(BaboSexlabStatSprigganTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1392
  If BaboSexlabStatSprigganTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1393
    BaboSexlabStatSprigganTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1394
  EndIf
EndFunction

Function CalcDwarvenTraumaExpGain(Float Mult)
  BaboSexlabStatDwarvenTrauma.setvalue(BaboSexlabStatDwarvenTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1399
  If BaboSexlabStatDwarvenTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1400
    BaboSexlabStatDwarvenTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1401
  EndIf
EndFunction

Function CalcGargoyleTraumaExpGain(Float Mult)
  BaboSexlabStatGargoyleTrauma.setvalue(BaboSexlabStatGargoyleTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1406
  If BaboSexlabStatGargoyleTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1407
    BaboSexlabStatGargoyleTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1408
  EndIf
EndFunction

Function CalcFrostAtronachTraumaExpGain(Float Mult)
  BaboSexlabStatFrostAtronachTrauma.setvalue(BaboSexlabStatFrostAtronachTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1413
  If BaboSexlabStatFrostAtronachTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1414
    BaboSexlabStatFrostAtronachTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1415
  EndIf
EndFunction

Function CalcStormAtronachTraumaExpGain(Float Mult)
  BaboSexlabStatStormAtronachTrauma.setvalue(BaboSexlabStatStormAtronachTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1420
  If BaboSexlabStatStormAtronachTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1421
    BaboSexlabStatStormAtronachTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1422
  EndIf
EndFunction

Function CalcHorkerTraumaExpGain(Float Mult)
  BaboSexlabStatHorkerTrauma.setvalue(BaboSexlabStatHorkerTrauma.getvalue() + Mult) ; #DEBUG_LINE_NO:1427
  If BaboSexlabStatHorkerTrauma.getvalue() > 200 as Float ; #DEBUG_LINE_NO:1428
    BaboSexlabStatHorkerTrauma.setvalue(200 as Float) ; #DEBUG_LINE_NO:1429
  EndIf
EndFunction

Function WillFinalCheck()
  Float Stat = BaboSexlabStatTrauma.getvalue() ; #DEBUG_LINE_NO:1435
  Float wStat = BaboSexlabStatConfidenceWill.getvalue() ; #DEBUG_LINE_NO:1436
  If Stat <= 0 as Float ; #DEBUG_LINE_NO:1438
    If wStat <= 10 as Float ; #DEBUG_LINE_NO:1439
      PlayerRef.setfactionrank(SLAX_WillfulFaction, 0) ; #DEBUG_LINE_NO:1440
      PlayerRef.setfactionrank(BaboFactionStatWill, 4) ; #DEBUG_LINE_NO:1441
    ElseIf wStat <= 20 as Float ; #DEBUG_LINE_NO:1442
      PlayerRef.setfactionrank(SLAX_WillfulFaction, 1) ; #DEBUG_LINE_NO:1443
      PlayerRef.setfactionrank(BaboFactionStatWill, 3) ; #DEBUG_LINE_NO:1444
    ElseIf wStat <= 35 as Float ; #DEBUG_LINE_NO:1445
      PlayerRef.setfactionrank(SLAX_WillfulFaction, 2) ; #DEBUG_LINE_NO:1446
      PlayerRef.setfactionrank(BaboFactionStatWill, 2) ; #DEBUG_LINE_NO:1447
    ElseIf wStat <= 65 as Float ; #DEBUG_LINE_NO:1448
      PlayerRef.setfactionrank(SLAX_WillfulFaction, 3) ; #DEBUG_LINE_NO:1449
      PlayerRef.setfactionrank(BaboFactionStatWill, 1) ; #DEBUG_LINE_NO:1450
    ElseIf wStat <= 80 as Float ; #DEBUG_LINE_NO:1451
      PlayerRef.setfactionrank(SLAX_WillfulFaction, 4) ; #DEBUG_LINE_NO:1452
      PlayerRef.setfactionrank(BaboFactionStatWill, 0) ; #DEBUG_LINE_NO:1453
    ElseIf wStat <= 100 as Float ; #DEBUG_LINE_NO:1454
      PlayerRef.setfactionrank(SLAX_WillfulFaction, 5) ; #DEBUG_LINE_NO:1455
      PlayerRef.setfactionrank(BaboFactionStatWill, 0) ; #DEBUG_LINE_NO:1456
    EndIf
  ElseIf Stat <= 10 as Float ; #DEBUG_LINE_NO:1460
    PlayerRef.setfactionrank(SLAX_WillBrokenFaction, 0) ; #DEBUG_LINE_NO:1461
    PlayerRef.setfactionrank(BaboFactionStatWill, 5) ; #DEBUG_LINE_NO:1462
  ElseIf Stat <= 20 as Float ; #DEBUG_LINE_NO:1463
    PlayerRef.setfactionrank(SLAX_WillBrokenFaction, 1) ; #DEBUG_LINE_NO:1464
    PlayerRef.setfactionrank(BaboFactionStatWill, 6) ; #DEBUG_LINE_NO:1465
  ElseIf Stat <= 35 as Float ; #DEBUG_LINE_NO:1466
    PlayerRef.setfactionrank(SLAX_WillBrokenFaction, 2) ; #DEBUG_LINE_NO:1467
    PlayerRef.setfactionrank(BaboFactionStatWill, 7) ; #DEBUG_LINE_NO:1468
  ElseIf Stat <= 55 as Float ; #DEBUG_LINE_NO:1469
    PlayerRef.setfactionrank(SLAX_WillBrokenFaction, 3) ; #DEBUG_LINE_NO:1470
    PlayerRef.setfactionrank(BaboFactionStatWill, 8) ; #DEBUG_LINE_NO:1471
  ElseIf Stat <= 75 as Float ; #DEBUG_LINE_NO:1472
    PlayerRef.setfactionrank(SLAX_WillBrokenFaction, 4) ; #DEBUG_LINE_NO:1473
    PlayerRef.setfactionrank(BaboFactionStatWill, 9) ; #DEBUG_LINE_NO:1474
  ElseIf Stat <= 200 as Float ; #DEBUG_LINE_NO:1475
    PlayerRef.setfactionrank(SLAX_WillBrokenFaction, 5) ; #DEBUG_LINE_NO:1476
    PlayerRef.setfactionrank(BaboFactionStatWill, 10) ; #DEBUG_LINE_NO:1477
  EndIf
EndFunction

Function CalcLewdnessExpGain(Float Mult)
  Float ArousalState = PlayerRef.getfactionrank(sla_Arousal) as Float ; #DEBUG_LINE_NO:1483
  If Mult > 0 as Float ; #DEBUG_LINE_NO:1485
    If ArousalState >= 10 as Float ; #DEBUG_LINE_NO:1486
      BaboSexlabStatLewdness.setvalue(BaboSexlabStatLewdness.getvalue() + (BaboSexlabStatLewdnessSpeed.getvalue() * Mult * ArousalState / 10 as Float)) ; #DEBUG_LINE_NO:1487
    Else
      BaboSexlabStatLewdness.setvalue(BaboSexlabStatLewdness.getvalue() + BaboSexlabStatLewdnessSpeed.getvalue() * Mult) ; #DEBUG_LINE_NO:1489
    EndIf
  ElseIf ArousalState >= 10 as Float ; #DEBUG_LINE_NO:1492
    BaboSexlabStatLewdness.setvalue(BaboSexlabStatLewdness.getvalue() - BaboSexlabStatLewdnessSpeed.getvalue() + (Mult / ArousalState / 10 as Float)) ; #DEBUG_LINE_NO:1493
  Else
    BaboSexlabStatLewdness.setvalue(BaboSexlabStatLewdness.getvalue() - BaboSexlabStatLewdnessSpeed.getvalue() - Mult) ; #DEBUG_LINE_NO:1495
  EndIf
  Int SexAddict = BaboSexlabStatLewdness.getvalue() as Int / 10 ; #DEBUG_LINE_NO:1499
  If SexAddict > 100 ; #DEBUG_LINE_NO:1501
    SexAddict = 100 ; #DEBUG_LINE_NO:1502
  ElseIf SexAddict < 0 ; #DEBUG_LINE_NO:1503
    SexAddict = 0 ; #DEBUG_LINE_NO:1504
  EndIf
  Self.LewdnessFinalCheck(SexAddict) ; #DEBUG_LINE_NO:1507
EndFunction

Function CalcLewdnessExpLoss(Float Mult)
  Float ArousalState = PlayerRef.getfactionrank(sla_Arousal) as Float ; #DEBUG_LINE_NO:1511
  If ArousalState >= 10 as Float ; #DEBUG_LINE_NO:1512
    BaboSexlabStatLewdness.setvalue(BaboSexlabStatLewdness.getvalue() - BaboSexlabStatLewdnessSpeed.getvalue() + (Mult / ArousalState / 10 as Float)) ; #DEBUG_LINE_NO:1513
  Else
    BaboSexlabStatLewdness.setvalue(BaboSexlabStatLewdness.getvalue() - BaboSexlabStatLewdnessSpeed.getvalue() - Mult) ; #DEBUG_LINE_NO:1515
  EndIf
  Int SexAddict = BaboSexlabStatLewdness.getvalue() as Int / 10 ; #DEBUG_LINE_NO:1518
  If SexAddict > 100 ; #DEBUG_LINE_NO:1520
    SexAddict = 100 ; #DEBUG_LINE_NO:1521
  ElseIf SexAddict < 0 ; #DEBUG_LINE_NO:1522
    SexAddict = 0 ; #DEBUG_LINE_NO:1523
  EndIf
  Self.LewdnessFinalCheck(SexAddict) ; #DEBUG_LINE_NO:1526
EndFunction

Function LewdnessFinalCheck(Int SexAddict)
  If SexAddict <= 10 ; #DEBUG_LINE_NO:1531
    PlayerRef.setfactionrank(SLAX_SexAddictFaction, 0) ; #DEBUG_LINE_NO:1532
    PlayerRef.setfactionrank(BaboFactionStatLewdness, 0) ; #DEBUG_LINE_NO:1533
  ElseIf SexAddict <= 20 ; #DEBUG_LINE_NO:1534
    PlayerRef.setfactionrank(SLAX_SexAddictFaction, 1) ; #DEBUG_LINE_NO:1535
    PlayerRef.setfactionrank(BaboFactionStatLewdness, 1) ; #DEBUG_LINE_NO:1536
  ElseIf SexAddict <= 35 ; #DEBUG_LINE_NO:1537
    PlayerRef.setfactionrank(SLAX_SexAddictFaction, 2) ; #DEBUG_LINE_NO:1538
    PlayerRef.setfactionrank(BaboFactionStatLewdness, 2) ; #DEBUG_LINE_NO:1539
  ElseIf SexAddict <= 55 ; #DEBUG_LINE_NO:1540
    PlayerRef.setfactionrank(SLAX_SexAddictFaction, 3) ; #DEBUG_LINE_NO:1541
    PlayerRef.setfactionrank(BaboFactionStatLewdness, 3) ; #DEBUG_LINE_NO:1542
  ElseIf SexAddict <= 75 ; #DEBUG_LINE_NO:1543
    PlayerRef.setfactionrank(SLAX_SexAddictFaction, 4) ; #DEBUG_LINE_NO:1544
    PlayerRef.setfactionrank(BaboFactionStatLewdness, 4) ; #DEBUG_LINE_NO:1545
  ElseIf SexAddict <= 100 ; #DEBUG_LINE_NO:1546
    PlayerRef.setfactionrank(SLAX_SexAddictFaction, 5) ; #DEBUG_LINE_NO:1547
    PlayerRef.setfactionrank(BaboFactionStatLewdness, 5) ; #DEBUG_LINE_NO:1548
  EndIf
EndFunction

Function CalcExpLoss()
  ExhibitionistExp -= (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatExhibitionistSpeed.getvalue() ; #DEBUG_LINE_NO:1554
  BikExp -= (GameDaysPassed.getvalue() - LastUpdate) * 24.0 * BaboSexlabStatSkimpyDecrease.getvalue() ; #DEBUG_LINE_NO:1555
  Self.CalcLewdnessExpLoss(10.0) ; #DEBUG_LINE_NO:1556
  BRMQuest.DecreaseReputationBitch(2 as Float) ; #DEBUG_LINE_NO:1557
  If ExhibitionistExp < 0.0 ; #DEBUG_LINE_NO:1558
    ExhibitionistExp = 0.0 ; #DEBUG_LINE_NO:1559
  EndIf
  If LewdnessExp < 0.0 ; #DEBUG_LINE_NO:1562
    LewdnessExp = 0.0 ; #DEBUG_LINE_NO:1563
  EndIf
  If BikExp < 0.0 ; #DEBUG_LINE_NO:1566
    BikExp = 0.0 ; #DEBUG_LINE_NO:1567
  EndIf
EndFunction

Function CalcLevel()
  Int OldLevel = BaboSexlabStatSkimpyExpLevel.getvalue() as Int ; #DEBUG_LINE_NO:1573
  If BikExp > ExpPerLevel * 5.5 ; #DEBUG_LINE_NO:1574
    BaboSexlabStatSkimpyExpLevel.setvalue(4 as Float) ; #DEBUG_LINE_NO:1575
  ElseIf BikExp > ExpPerLevel * 3.5 ; #DEBUG_LINE_NO:1576
    BaboSexlabStatSkimpyExpLevel.setvalue(3 as Float) ; #DEBUG_LINE_NO:1577
  ElseIf BikExp > ExpPerLevel * 2.0 ; #DEBUG_LINE_NO:1578
    BaboSexlabStatSkimpyExpLevel.setvalue(2 as Float) ; #DEBUG_LINE_NO:1579
  ElseIf BikExp > ExpPerLevel ; #DEBUG_LINE_NO:1580
    BaboSexlabStatSkimpyExpLevel.setvalue(1 as Float) ; #DEBUG_LINE_NO:1581
  Else
    BaboSexlabStatSkimpyExpLevel.setvalue(0 as Float) ; #DEBUG_LINE_NO:1583
  EndIf
  If ExhibitionistExp > ExpPerLevel * 30.0 ; #DEBUG_LINE_NO:1586
    PlayerRef.setfactionrank(SLAX_NudismAddictFaction, 5) ; #DEBUG_LINE_NO:1587
    PlayerRef.setfactionrank(BaboFactionStatExhibitionist, 5) ; #DEBUG_LINE_NO:1588
    BaboSexlabStatExhibitionist.setvalue(5 as Float) ; #DEBUG_LINE_NO:1589
  ElseIf ExhibitionistExp > ExpPerLevel * 15.0 ; #DEBUG_LINE_NO:1590
    PlayerRef.setfactionrank(SLAX_NudismAddictFaction, 4) ; #DEBUG_LINE_NO:1591
    PlayerRef.setfactionrank(BaboFactionStatExhibitionist, 4) ; #DEBUG_LINE_NO:1592
    BaboSexlabStatExhibitionist.setvalue(4 as Float) ; #DEBUG_LINE_NO:1593
  ElseIf ExhibitionistExp > ExpPerLevel * 10.0 ; #DEBUG_LINE_NO:1594
    PlayerRef.setfactionrank(SLAX_NudismAddictFaction, 3) ; #DEBUG_LINE_NO:1595
    PlayerRef.setfactionrank(BaboFactionStatExhibitionist, 3) ; #DEBUG_LINE_NO:1596
    BaboSexlabStatExhibitionist.setvalue(3 as Float) ; #DEBUG_LINE_NO:1597
  ElseIf ExhibitionistExp > ExpPerLevel * 7.5 ; #DEBUG_LINE_NO:1598
    PlayerRef.setfactionrank(SLAX_NudismAddictFaction, 2) ; #DEBUG_LINE_NO:1599
    PlayerRef.setfactionrank(BaboFactionStatExhibitionist, 2) ; #DEBUG_LINE_NO:1600
    BaboSexlabStatExhibitionist.setvalue(2 as Float) ; #DEBUG_LINE_NO:1601
  ElseIf ExhibitionistExp > ExpPerLevel * 5.0 ; #DEBUG_LINE_NO:1602
    PlayerRef.setfactionrank(SLAX_NudismAddictFaction, 1) ; #DEBUG_LINE_NO:1603
    PlayerRef.setfactionrank(BaboFactionStatExhibitionist, 1) ; #DEBUG_LINE_NO:1604
    BaboSexlabStatExhibitionist.setvalue(1 as Float) ; #DEBUG_LINE_NO:1605
  Else
    PlayerRef.setfactionrank(SLAX_NudismAddictFaction, 0) ; #DEBUG_LINE_NO:1607
    PlayerRef.setfactionrank(BaboFactionStatExhibitionist, 0) ; #DEBUG_LINE_NO:1608
    BaboSexlabStatExhibitionist.setvalue(0 as Float) ; #DEBUG_LINE_NO:1609
  EndIf
  Int NewLevel = BaboSexlabStatSkimpyExpLevel.getvalue() as Int ; #DEBUG_LINE_NO:1612
  If NewLevel > OldLevel ; #DEBUG_LINE_NO:1613
    Debug.Messagebox("You've gained more experience wearing bikini armors\nBikini Experience Rank: " + Self.GetBikRankString()) ; #DEBUG_LINE_NO:1614
  ElseIf NewLevel < OldLevel ; #DEBUG_LINE_NO:1616
    Debug.Messagebox("You've lost bikini armor experience\nBikini Experience Rank: " + Self.GetBikRankString()) ; #DEBUG_LINE_NO:1617
  EndIf
  BaboDetectSpectatorQuest.stop() ; #DEBUG_LINE_NO:1620
EndFunction

String Function GetBikRankString()
  Int i = BaboSexlabStatSkimpyExpLevel.getvalue() as Int ; #DEBUG_LINE_NO:1624
  If i == 0 ; #DEBUG_LINE_NO:1625
    Return "Untrained " ; #DEBUG_LINE_NO:1626
  ElseIf i == 1 ; #DEBUG_LINE_NO:1627
    Return "Apprentice " ; #DEBUG_LINE_NO:1628
  ElseIf i == 2 ; #DEBUG_LINE_NO:1629
    Return "Adept " ; #DEBUG_LINE_NO:1630
  ElseIf i == 3 ; #DEBUG_LINE_NO:1631
    Return "Expert " ; #DEBUG_LINE_NO:1632
  ElseIf i == 4 ; #DEBUG_LINE_NO:1633
    Return "Master " ; #DEBUG_LINE_NO:1634
  EndIf
EndFunction

Function PlayAnim(Actor Victim, Actor Aggressor, Bool Animate = True, String VictimAnim, String AggressorAnim, Scene AfterScene = none)
  If Animate ; #DEBUG_LINE_NO:1642
    (BaboSexController as babosexcontrollermanager).PrecisionCheck(Aggressor, True) ; #DEBUG_LINE_NO:1643
    (BaboSexController as babosexcontrollermanager).PrecisionCheck(Victim, True) ; #DEBUG_LINE_NO:1644
    If Aggressor != PlayerRef ; #DEBUG_LINE_NO:1645
      actorutil.AddPackageOverride(Aggressor, DoNothing, 100, 1) ; #DEBUG_LINE_NO:1646
      Aggressor.evaluatepackage() ; #DEBUG_LINE_NO:1647
      Aggressor.SetRestrained(True) ; #DEBUG_LINE_NO:1648
      Aggressor.SetDontMove(True) ; #DEBUG_LINE_NO:1649
      Game.DisablePlayerControls(True, True, False, False, False, False, False, False, 0) ; #DEBUG_LINE_NO:1650
      Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:1651
    Else
      Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:1653
    EndIf
    MiscReferences.MoveTo(Aggressor as ObjectReference, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:1655
    Float AngleZ = Victim.GetAngleZ() ; #DEBUG_LINE_NO:1656
    Aggressor.MoveTo(Victim as ObjectReference, 0.0 * Math.Sin(AngleZ), 0.0 * Math.Cos(AngleZ), 0.0, True) ; #DEBUG_LINE_NO:1657
    Victim.SetVehicle(MiscReferences) ; #DEBUG_LINE_NO:1658
    Aggressor.SetVehicle(MiscReferences) ; #DEBUG_LINE_NO:1659
    If Isplaying == False ; #DEBUG_LINE_NO:1660
      Debug.SendAnimationEvent(Aggressor as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:1661
      Debug.SendAnimationEvent(Victim as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:1662
    EndIf
    Utility.wait(1.0) ; #DEBUG_LINE_NO:1664
    Aggressor.MoveTo(Victim as ObjectReference, 0.0 * Math.Sin(AngleZ), 0.0 * Math.Cos(AngleZ), 0.0, True) ; #DEBUG_LINE_NO:1665
    Debug.SendAnimationEvent(Victim as ObjectReference, VictimAnim) ; #DEBUG_LINE_NO:1666
    Debug.SendAnimationEvent(Aggressor as ObjectReference, AggressorAnim) ; #DEBUG_LINE_NO:1667
    AfterScene.Forcestart() ; #DEBUG_LINE_NO:1668
    Isplaying = True ; #DEBUG_LINE_NO:1669
  Else
    Victim.SetVehicle(None) ; #DEBUG_LINE_NO:1671
    Aggressor.SetVehicle(None) ; #DEBUG_LINE_NO:1672
    If Aggressor != PlayerRef ; #DEBUG_LINE_NO:1673
      Game.EnablePlayerControls(True, True, True, True, True, True, True, True, 0) ; #DEBUG_LINE_NO:1674
      Game.SetPlayerAIDriven(False) ; #DEBUG_LINE_NO:1675
      Victim.SetRestrained(False) ; #DEBUG_LINE_NO:1676
      Victim.SetDontMove(False) ; #DEBUG_LINE_NO:1677
      Aggressor.SetRestrained(False) ; #DEBUG_LINE_NO:1678
      Aggressor.SetDontMove(False) ; #DEBUG_LINE_NO:1679
      actorutil.RemovePackageOverride(Aggressor, DoNothing) ; #DEBUG_LINE_NO:1680
    Else
      Game.SetPlayerAIDriven(False) ; #DEBUG_LINE_NO:1682
    EndIf
    Debug.SendAnimationEvent(Aggressor as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:1684
    Debug.SendAnimationEvent(Victim as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:1685
    AfterScene.stop() ; #DEBUG_LINE_NO:1686
    (BaboSexController as babosexcontrollermanager).PrecisionCheck(Aggressor, False) ; #DEBUG_LINE_NO:1687
    (BaboSexController as babosexcontrollermanager).PrecisionCheck(Victim, False) ; #DEBUG_LINE_NO:1688
    Isplaying = False ; #DEBUG_LINE_NO:1689
  EndIf
EndFunction

Function StruggleAnim(Actor Victim, Actor Aggressor, Bool Animate = True, String VictimAnim, String AggressorAnim)
  If Animate ; #DEBUG_LINE_NO:1694
    (BaboSexController as babosexcontrollermanager).PrecisionCheck(Aggressor, True) ; #DEBUG_LINE_NO:1695
    (BaboSexController as babosexcontrollermanager).PrecisionCheck(Victim, True) ; #DEBUG_LINE_NO:1696
    If Aggressor != PlayerRef ; #DEBUG_LINE_NO:1697
      actorutil.AddPackageOverride(Aggressor, DoNothing, 100, 1) ; #DEBUG_LINE_NO:1698
      Aggressor.evaluatepackage() ; #DEBUG_LINE_NO:1699
      Aggressor.SetRestrained(True) ; #DEBUG_LINE_NO:1700
      Aggressor.SetDontMove(True) ; #DEBUG_LINE_NO:1701
      Game.DisablePlayerControls(True, True, False, False, True, True, False, False, 0) ; #DEBUG_LINE_NO:1703
      Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:1704
      If Game.GetCameraState() == 0 ; #DEBUG_LINE_NO:1705
        Game.ForceThirdPerson() ; #DEBUG_LINE_NO:1706
      EndIf
    Else
      Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:1709
    EndIf
    MiscReferences.MoveTo(Aggressor as ObjectReference, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:1711
    Float AngleZ = Victim.GetAngleZ() ; #DEBUG_LINE_NO:1712
    Aggressor.MoveTo(Victim as ObjectReference, 0.0 * Math.Sin(AngleZ), 0.0 * Math.Cos(AngleZ), 0.0, True) ; #DEBUG_LINE_NO:1713
    Victim.SetVehicle(MiscReferences) ; #DEBUG_LINE_NO:1714
    Aggressor.SetVehicle(MiscReferences) ; #DEBUG_LINE_NO:1715
    If Isplaying == False ; #DEBUG_LINE_NO:1716
      Debug.SendAnimationEvent(Aggressor as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:1717
      Debug.SendAnimationEvent(Victim as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:1718
    EndIf
    Utility.wait(1.0) ; #DEBUG_LINE_NO:1720
    Aggressor.MoveTo(Victim as ObjectReference, 0.0 * Math.Sin(AngleZ), 0.0 * Math.Cos(AngleZ), 0.0, True) ; #DEBUG_LINE_NO:1721
    Debug.SendAnimationEvent(Victim as ObjectReference, VictimAnim) ; #DEBUG_LINE_NO:1722
    Debug.SendAnimationEvent(Aggressor as ObjectReference, AggressorAnim) ; #DEBUG_LINE_NO:1723
    Isplaying = True ; #DEBUG_LINE_NO:1724
  Else
    Victim.SetVehicle(None) ; #DEBUG_LINE_NO:1726
    Aggressor.SetVehicle(None) ; #DEBUG_LINE_NO:1727
    If Aggressor != PlayerRef ; #DEBUG_LINE_NO:1728
      Game.EnablePlayerControls(True, True, True, True, True, True, True, True, 0) ; #DEBUG_LINE_NO:1729
      Game.SetPlayerAIDriven(False) ; #DEBUG_LINE_NO:1730
      Victim.SetRestrained(False) ; #DEBUG_LINE_NO:1731
      Victim.SetDontMove(False) ; #DEBUG_LINE_NO:1732
      Aggressor.SetRestrained(False) ; #DEBUG_LINE_NO:1733
      Aggressor.SetDontMove(False) ; #DEBUG_LINE_NO:1734
      actorutil.RemovePackageOverride(Aggressor, DoNothing) ; #DEBUG_LINE_NO:1735
    Else
      Game.SetPlayerAIDriven(False) ; #DEBUG_LINE_NO:1737
    EndIf
    Debug.SendAnimationEvent(Aggressor as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:1739
    Debug.SendAnimationEvent(Victim as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:1740
    (BaboSexController as babosexcontrollermanager).PrecisionCheck(Aggressor, False) ; #DEBUG_LINE_NO:1741
    (BaboSexController as babosexcontrollermanager).PrecisionCheck(Victim, False) ; #DEBUG_LINE_NO:1742
    Isplaying = False ; #DEBUG_LINE_NO:1743
  EndIf
EndFunction

Function PairedAnim(Actor Victim, Actor Aggressor, Idle PairedMotion, Bool Paired, Idle VictimAnim, Idle AggressorAnim)
  If Paired ; #DEBUG_LINE_NO:1748
    If Aggressor.PlayIdleWithTarget(PairedMotion, Victim as ObjectReference) ; #DEBUG_LINE_NO:1749
      Debug.trace("Aggressor does somthing to Victim", 0) ; #DEBUG_LINE_NO:1750
    Else
      Debug.trace("Something went wrong", 0) ; #DEBUG_LINE_NO:1752
    EndIf
  Else
    (BaboSexController as babosexcontrollermanager).PrecisionCheck(Aggressor, True) ; #DEBUG_LINE_NO:1755
    (BaboSexController as babosexcontrollermanager).PrecisionCheck(Victim, True) ; #DEBUG_LINE_NO:1756
    If Aggressor != PlayerRef ; #DEBUG_LINE_NO:1757
      actorutil.AddPackageOverride(Aggressor, DoNothing, 100, 1) ; #DEBUG_LINE_NO:1758
      Aggressor.evaluatepackage() ; #DEBUG_LINE_NO:1759
      Aggressor.SetRestrained(True) ; #DEBUG_LINE_NO:1760
      Aggressor.SetDontMove(True) ; #DEBUG_LINE_NO:1761
      Game.DisablePlayerControls(True, True, False, False, True, False, False, False, 0) ; #DEBUG_LINE_NO:1762
      Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:1763
    Else
      Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:1765
    EndIf
    MiscReferences.MoveTo(Aggressor as ObjectReference, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:1767
    Float AngleZ = Victim.GetAngleZ() ; #DEBUG_LINE_NO:1768
    Aggressor.MoveTo(Victim as ObjectReference, 0.0 * Math.Sin(AngleZ), 0.0 * Math.Cos(AngleZ), 0.0, True) ; #DEBUG_LINE_NO:1769
    Victim.SetVehicle(MiscReferences) ; #DEBUG_LINE_NO:1770
    Aggressor.SetVehicle(MiscReferences) ; #DEBUG_LINE_NO:1771
    Victim.PlayIdle(VictimAnim) ; #DEBUG_LINE_NO:1772
    Aggressor.PlayIdle(AggressorAnim) ; #DEBUG_LINE_NO:1773
  EndIf
EndFunction

Function FurnitureDisplay(Actor Victim, Furniture DisplayTool)
  Dummy = Victim.PlaceAtMe(DisplayTool as Form, 1, False, True) ; #DEBUG_LINE_NO:1778
  Float CharacterAngle = Victim.GetAngleZ() ; #DEBUG_LINE_NO:1779
  Dummy.MoveTo(Victim as ObjectReference, DistanceInFront * Math.Sin(CharacterAngle), DistanceInFront * Math.Cos(CharacterAngle), DistanceZ, True) ; #DEBUG_LINE_NO:1780
  Dummy.SetAngle(0 as Float, 0 as Float, CharacterAngle) ; #DEBUG_LINE_NO:1781
  Dummy.Enable(False) ; #DEBUG_LINE_NO:1782
EndFunction

Function FurnitureActivate(Actor Victim)
  If Victim == PlayerRef ; #DEBUG_LINE_NO:1786
    Game.DisablePlayerControls(True, True, True, False, True, False, True, False, 0) ; #DEBUG_LINE_NO:1787
    Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:1788
  EndIf
  Victim.MoveTo(Dummy, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:1791
  Utility.wait(2.0) ; #DEBUG_LINE_NO:1792
  Dummy.Activate(Victim as ObjectReference, False) ; #DEBUG_LINE_NO:1793
EndFunction

Function FurnitureDespawn(Actor Victim)
  Victim.evaluatepackage() ; #DEBUG_LINE_NO:1797
  Utility.wait(2.0) ; #DEBUG_LINE_NO:1799
  Dummy.Disable(False) ; #DEBUG_LINE_NO:1801
EndFunction

Function SLHHActivate(Actor pTarget, Actor pTargetFriend = None)
  If BaboHorribleHarassment.getvalue() == 1 as Float ; #DEBUG_LINE_NO:1805
    BaboMonitorScriptCreaturePackageActive.setvalue(2 as Float) ; #DEBUG_LINE_NO:1806
    Game.DisablePlayerControls(True, True, False, False, True, True, False, False, 0) ; #DEBUG_LINE_NO:1807
    Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:1808
    (BaboSexController as babosexcontrollermanager).MonitorMessagebox(2) ; #DEBUG_LINE_NO:1809
    Utility.wait(5.0) ; #DEBUG_LINE_NO:1810
    Keyword SLHHScriptEventKeyword = Game.GetFormFromFile(50448, "SexLabHorribleHarassment.esp") as Keyword ; #DEBUG_LINE_NO:1812
    SLHHScriptEventKeyword.SendStoryEvent(None, pTarget as ObjectReference, pTargetFriend as ObjectReference, 0, 0) ; #DEBUG_LINE_NO:1813
  EndIf
  CreatureReferences[0].clear() ; #DEBUG_LINE_NO:1816
  CreatureReferences[1].clear() ; #DEBUG_LINE_NO:1817
  CreatureReferences[2].clear() ; #DEBUG_LINE_NO:1818
EndFunction

Function SLHHBCActivate(Actor pTarget, Actor pTargetFriend = None, Int Sex)
  If BaboHorribleHarassment.getvalue() == 1 as Float ; #DEBUG_LINE_NO:1822
    Game.DisablePlayerControls(True, True, False, False, True, True, False, False, 0) ; #DEBUG_LINE_NO:1823
    Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:1824
    (BaboSexController as babosexcontrollermanager).MonitorMessagebox(3) ; #DEBUG_LINE_NO:1825
    Utility.wait(5.0) ; #DEBUG_LINE_NO:1826
    Keyword SLHHScriptEventBCKeyword = Game.GetFormFromFile(144326, "SexLabHorribleHarassment.esp") as Keyword ; #DEBUG_LINE_NO:1828
    SLHHScriptEventBCKeyword.SendStoryEvent(None, pTarget as ObjectReference, pTargetFriend as ObjectReference, Sex, 0) ; #DEBUG_LINE_NO:1829
  EndIf
EndFunction

Function SLHHDrunkActivate(Actor pTarget, Actor pTargetFriend = None, Int Sex)
  If BaboHorribleHarassment.getvalue() == 1 as Float ; #DEBUG_LINE_NO:1835
    Game.DisablePlayerControls(True, True, False, False, True, True, False, False, 0) ; #DEBUG_LINE_NO:1836
    Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:1837
    (BaboSexController as babosexcontrollermanager).MonitorMessagebox(4) ; #DEBUG_LINE_NO:1838
    Utility.wait(5.0) ; #DEBUG_LINE_NO:1839
    Keyword SLHHScriptEventBCKeyword = Game.GetFormFromFile(149851, "SexLabHorribleHarassment.esp") as Keyword ; #DEBUG_LINE_NO:1841
    SLHHScriptEventBCKeyword.SendStoryEvent(None, pTarget as ObjectReference, pTargetFriend as ObjectReference, Sex, 0) ; #DEBUG_LINE_NO:1842
  EndIf
EndFunction

Function SendFHUInflationEventNoActor(Form inflater, Bool Inflation, Int poolmask, Float amount, Int time, String callback)
  Int handle = modevent.Create("SR_InflateEvent") ; #DEBUG_LINE_NO:1850
  modevent.PushForm(handle, inflater) ; #DEBUG_LINE_NO:1851
  modevent.PushBool(handle, Inflation) ; #DEBUG_LINE_NO:1852
  modevent.PushInt(handle, poolmask) ; #DEBUG_LINE_NO:1853
  modevent.PushFloat(handle, amount) ; #DEBUG_LINE_NO:1854
  modevent.PushInt(handle, time) ; #DEBUG_LINE_NO:1855
  modevent.PushString(handle, callback) ; #DEBUG_LINE_NO:1856
  modevent.Send(handle) ; #DEBUG_LINE_NO:1857
EndFunction

Function SendFHUInflationEvent(Form inflater, Form injector, Bool Inflation, Int poolmask, Float amount, Int time, String callback)
  Int handle = modevent.Create("SR_InflateInjectorEvent") ; #DEBUG_LINE_NO:1862
  modevent.PushForm(handle, inflater) ; #DEBUG_LINE_NO:1863
  modevent.PushForm(handle, injector) ; #DEBUG_LINE_NO:1864
  modevent.PushBool(handle, Inflation) ; #DEBUG_LINE_NO:1865
  modevent.PushInt(handle, poolmask) ; #DEBUG_LINE_NO:1866
  modevent.PushFloat(handle, amount) ; #DEBUG_LINE_NO:1867
  modevent.PushInt(handle, time) ; #DEBUG_LINE_NO:1868
  modevent.PushString(handle, callback) ; #DEBUG_LINE_NO:1869
  modevent.Send(handle) ; #DEBUG_LINE_NO:1870
EndFunction

Armor Function ForceEquipDDIDevice(Actor akactor, Int DDIdevice, Bool force = false)
  Armor deviceinvetory
  If DDIdevice == 1 ; #DEBUG_LINE_NO:1876
    deviceinvetory = (zadquest as zadlibs).GetDeviceByTags(zad_DeviousBelt, "belt,metal,padded,full", True, "", True) ; #DEBUG_LINE_NO:1877
  ElseIf DDIdevice == 2 ; #DEBUG_LINE_NO:1878
    deviceinvetory = (zadquest as zadlibs).GetDeviceByTags(zad_DeviousCollar, "collar,metal,posture,padded", True, "", True) ; #DEBUG_LINE_NO:1879
  ElseIf DDIdevice == 3 ; #DEBUG_LINE_NO:1880
    deviceinvetory = (zadquest as zadlibs).GetDeviceByTags(zad_DeviousBra, "bra,metal,padded", True, "", True) ; #DEBUG_LINE_NO:1881
  ElseIf DDIdevice == 4 ; #DEBUG_LINE_NO:1882
    deviceinvetory = (zadquest as zadlibs).GetDeviceByTags(zad_DeviousArmbinder, "armbinder,leather,black", True, "", True) ; #DEBUG_LINE_NO:1883
  ElseIf DDIdevice == 5 ; #DEBUG_LINE_NO:1884
    deviceinvetory = (zadquest as zadlibs).GetDeviceByTags(zad_DeviousBlindfold, "blindfold", True, "", True) ; #DEBUG_LINE_NO:1885
  ElseIf DDIdevice == 6 ; #DEBUG_LINE_NO:1886
    
  ElseIf DDIdevice == 7 ; #DEBUG_LINE_NO:1888
    deviceinvetory = (zadquest as zadlibs).GetDeviceByTags(zad_DeviousYoke, "yoke", True, "", True) ; #DEBUG_LINE_NO:1889
  ElseIf DDIdevice == 8 ; #DEBUG_LINE_NO:1890
    deviceinvetory = (zadquest as zadlibs).GetDeviceByTags(zad_DeviousGag, "gag,ring", True, "", True) ; #DEBUG_LINE_NO:1891
  ElseIf DDIdevice == 9 ; #DEBUG_LINE_NO:1892
    
  ElseIf DDIdevice == 10 ; #DEBUG_LINE_NO:1894
    
  ElseIf DDIdevice == 11 ; #DEBUG_LINE_NO:1896
    
  ElseIf DDIdevice == 12 ; #DEBUG_LINE_NO:1898
    
  ElseIf DDIdevice == 13 ; #DEBUG_LINE_NO:1900
    deviceinvetory = (zadquest as zadlibs).GetDeviceByTags(zad_DeviousPiercingsNipple, "piercing,nipple", True, "", True) ; #DEBUG_LINE_NO:1901
  ElseIf DDIdevice == 14 ; #DEBUG_LINE_NO:1902
    deviceinvetory = (zadquest as zadlibs).GetDeviceByTags(zad_DeviousPiercingsVaginal, "piercing,vaginal", True, "", True) ; #DEBUG_LINE_NO:1903
  ElseIf DDIdevice == 15 ; #DEBUG_LINE_NO:1904
    deviceinvetory = (zadquest as zadlibs).GetDeviceByTags(zad_DeviousPlugVaginal, "plug,pump,vaginal,inflatable", True, "", True) ; #DEBUG_LINE_NO:1905
  ElseIf DDIdevice == 16 ; #DEBUG_LINE_NO:1906
    deviceinvetory = (zadquest as zadlibs).GetDeviceByTags(zad_DeviousPlugAnal, "plug,pump,anal,inflatable", True, "", True) ; #DEBUG_LINE_NO:1907
  ElseIf DDIdevice == 17 ; #DEBUG_LINE_NO:1908
    
  EndIf
  If (zadquest as zadlibs).LockDevice(akactor, deviceinvetory, force) ; #DEBUG_LINE_NO:1913
    Return deviceinvetory ; #DEBUG_LINE_NO:1914
  Else
    Return None ; #DEBUG_LINE_NO:1916
  EndIf
EndFunction

Bool Function ForceUnequipDDIDevice(Actor akactor, Int DDIdevice, Bool destroyDevice = false)
  Keyword zad_DeviousDevice
  If DDIdevice == 1 ; #DEBUG_LINE_NO:1923
    zad_DeviousDevice = zad_DeviousBelt ; #DEBUG_LINE_NO:1924
  ElseIf DDIdevice == 2 ; #DEBUG_LINE_NO:1925
    zad_DeviousDevice = zad_DeviousCollar ; #DEBUG_LINE_NO:1926
  ElseIf DDIdevice == 3 ; #DEBUG_LINE_NO:1927
    zad_DeviousDevice = zad_DeviousBra ; #DEBUG_LINE_NO:1928
  ElseIf DDIdevice == 4 ; #DEBUG_LINE_NO:1929
    zad_DeviousDevice = zad_DeviousArmbinder ; #DEBUG_LINE_NO:1930
  ElseIf DDIdevice == 5 ; #DEBUG_LINE_NO:1931
    zad_DeviousDevice = zad_DeviousBlindfold ; #DEBUG_LINE_NO:1932
  ElseIf DDIdevice == 6 ; #DEBUG_LINE_NO:1933
    zad_DeviousDevice = zad_DeviousHarness ; #DEBUG_LINE_NO:1934
  ElseIf DDIdevice == 7 ; #DEBUG_LINE_NO:1935
    zad_DeviousDevice = zad_DeviousYoke ; #DEBUG_LINE_NO:1936
  ElseIf DDIdevice == 8 ; #DEBUG_LINE_NO:1937
    zad_DeviousDevice = zad_DeviousGag ; #DEBUG_LINE_NO:1938
  ElseIf DDIdevice == 9 ; #DEBUG_LINE_NO:1939
    zad_DeviousDevice = zad_DeviousCorset ; #DEBUG_LINE_NO:1940
  ElseIf DDIdevice == 10 ; #DEBUG_LINE_NO:1941
    zad_DeviousDevice = zad_DeviousSuit ; #DEBUG_LINE_NO:1942
  ElseIf DDIdevice == 11 ; #DEBUG_LINE_NO:1943
    zad_DeviousDevice = zad_DeviousHood ; #DEBUG_LINE_NO:1944
  ElseIf DDIdevice == 12 ; #DEBUG_LINE_NO:1945
    zad_DeviousDevice = zad_DeviousBoots ; #DEBUG_LINE_NO:1946
  ElseIf DDIdevice == 13 ; #DEBUG_LINE_NO:1947
    zad_DeviousDevice = zad_DeviousPiercingsNipple ; #DEBUG_LINE_NO:1948
  ElseIf DDIdevice == 14 ; #DEBUG_LINE_NO:1949
    zad_DeviousDevice = zad_DeviousPiercingsVaginal ; #DEBUG_LINE_NO:1950
  ElseIf DDIdevice == 15 ; #DEBUG_LINE_NO:1951
    zad_DeviousDevice = zad_DeviousPlugVaginal ; #DEBUG_LINE_NO:1952
  ElseIf DDIdevice == 16 ; #DEBUG_LINE_NO:1953
    zad_DeviousDevice = zad_DeviousPlugAnal ; #DEBUG_LINE_NO:1954
  ElseIf DDIdevice == 17 ; #DEBUG_LINE_NO:1955
    zad_DeviousDevice = zad_DeviousArmCuffs ; #DEBUG_LINE_NO:1956
  EndIf
  Return (zadquest as zadlibs).UnlockDeviceByKeyword(akactor, zad_DeviousDevice, destroyDevice) ; #DEBUG_LINE_NO:1959
EndFunction

Int Function GetequippedDDIDevice(Actor akactor, Int DDIdevice)
  Keyword zad_DeviousDevice
  If DDIdevice == 1 ; #DEBUG_LINE_NO:1965
    zad_DeviousDevice = zad_DeviousBelt ; #DEBUG_LINE_NO:1966
  ElseIf DDIdevice == 2 ; #DEBUG_LINE_NO:1967
    zad_DeviousDevice = zad_DeviousCollar ; #DEBUG_LINE_NO:1968
  ElseIf DDIdevice == 3 ; #DEBUG_LINE_NO:1969
    zad_DeviousDevice = zad_DeviousBra ; #DEBUG_LINE_NO:1970
  ElseIf DDIdevice == 4 ; #DEBUG_LINE_NO:1971
    zad_DeviousDevice = zad_DeviousArmbinder ; #DEBUG_LINE_NO:1972
  ElseIf DDIdevice == 5 ; #DEBUG_LINE_NO:1973
    zad_DeviousDevice = zad_DeviousBlindfold ; #DEBUG_LINE_NO:1974
  ElseIf DDIdevice == 6 ; #DEBUG_LINE_NO:1975
    zad_DeviousDevice = zad_DeviousHarness ; #DEBUG_LINE_NO:1976
  ElseIf DDIdevice == 7 ; #DEBUG_LINE_NO:1977
    zad_DeviousDevice = zad_DeviousYoke ; #DEBUG_LINE_NO:1978
  ElseIf DDIdevice == 8 ; #DEBUG_LINE_NO:1979
    zad_DeviousDevice = zad_DeviousGag ; #DEBUG_LINE_NO:1980
  ElseIf DDIdevice == 9 ; #DEBUG_LINE_NO:1981
    zad_DeviousDevice = zad_DeviousCorset ; #DEBUG_LINE_NO:1982
  ElseIf DDIdevice == 10 ; #DEBUG_LINE_NO:1983
    zad_DeviousDevice = zad_DeviousSuit ; #DEBUG_LINE_NO:1984
  ElseIf DDIdevice == 11 ; #DEBUG_LINE_NO:1985
    zad_DeviousDevice = zad_DeviousHood ; #DEBUG_LINE_NO:1986
  ElseIf DDIdevice == 12 ; #DEBUG_LINE_NO:1987
    zad_DeviousDevice = zad_DeviousBoots ; #DEBUG_LINE_NO:1988
  ElseIf DDIdevice == 13 ; #DEBUG_LINE_NO:1989
    zad_DeviousDevice = zad_DeviousPiercingsNipple ; #DEBUG_LINE_NO:1990
  ElseIf DDIdevice == 14 ; #DEBUG_LINE_NO:1991
    zad_DeviousDevice = zad_DeviousPiercingsVaginal ; #DEBUG_LINE_NO:1992
  ElseIf DDIdevice == 15 ; #DEBUG_LINE_NO:1993
    zad_DeviousDevice = zad_DeviousPlugVaginal ; #DEBUG_LINE_NO:1994
  ElseIf DDIdevice == 16 ; #DEBUG_LINE_NO:1995
    zad_DeviousDevice = zad_DeviousPlugAnal ; #DEBUG_LINE_NO:1996
  ElseIf DDIdevice == 17 ; #DEBUG_LINE_NO:1997
    zad_DeviousDevice = zad_DeviousArmCuffs ; #DEBUG_LINE_NO:1998
  EndIf
  Return (zadquest as zadlibs).IsWearingDevice(akactor, None, zad_DeviousDevice) ; #DEBUG_LINE_NO:2001
EndFunction

Function ExportStatus()
  String File = "../BaboDialogue/BaboDialoguePlayerStatus.json" ; #DEBUG_LINE_NO:2009
  If PlayerRef.isinfaction(BaboFactionAlmostEatenTitle) ; #DEBUG_LINE_NO:2028
    Int AlmostEatenTitle = PlayerRef.getfactionrank(BaboFactionAlmostEatenTitle) ; #DEBUG_LINE_NO:2029
    jsonutil.SetintValue(File, "AlmostEatenTitle", AlmostEatenTitle) ; #DEBUG_LINE_NO:2030
  Else
    jsonutil.SetintValue(File, "AlmostEatenTitle", -1) ; #DEBUG_LINE_NO:2032
  EndIf
  If PlayerRef.isinfaction(BaboFactionStallionSkewerTitle) ; #DEBUG_LINE_NO:2035
    Int StallionSkewerTitleRank = PlayerRef.getfactionrank(BaboFactionStallionSkewerTitle) ; #DEBUG_LINE_NO:2036
    jsonutil.SetintValue(File, "StallionSkewerTitleRank", StallionSkewerTitleRank) ; #DEBUG_LINE_NO:2037
  Else
    jsonutil.SetintValue(File, "StallionSkewerTitleRank", -1) ; #DEBUG_LINE_NO:2039
  EndIf
  If PlayerRef.isinfaction(BaboFactionWhiterunOrcFuckToyTitle) ; #DEBUG_LINE_NO:2042
    Int WhiterunOrcFuckToyTitleRank = PlayerRef.getfactionrank(BaboFactionWhiterunOrcFuckToyTitle) ; #DEBUG_LINE_NO:2043
    jsonutil.SetintValue(File, "WhiterunOrcFuckToyTitleRank", WhiterunOrcFuckToyTitleRank) ; #DEBUG_LINE_NO:2044
  Else
    jsonutil.SetintValue(File, "WhiterunOrcFuckToyTitleRank", -1) ; #DEBUG_LINE_NO:2046
  EndIf
  If PlayerRef.isinfaction(BaboFactionRieklingThirskFuckToyTitle) ; #DEBUG_LINE_NO:2049
    Int RieklingThirskFuckToyTitleRank = PlayerRef.getfactionrank(BaboFactionRieklingThirskFuckToyTitle) ; #DEBUG_LINE_NO:2050
    jsonutil.SetintValue(File, "RieklingThirskFuckToyTitleRank", RieklingThirskFuckToyTitleRank) ; #DEBUG_LINE_NO:2051
  Else
    jsonutil.SetintValue(File, "RieklingThirskFuckToyTitleRank", -1) ; #DEBUG_LINE_NO:2053
  EndIf
  If PlayerRef.isinfaction(BaboFactionNightgateInnVictoryTitle) ; #DEBUG_LINE_NO:2056
    Int NightgateInnVictoryTitleRank = PlayerRef.getfactionrank(BaboFactionNightgateInnVictoryTitle) ; #DEBUG_LINE_NO:2057
    jsonutil.SetintValue(File, "NightgateInnVictoryTitleRank", NightgateInnVictoryTitleRank) ; #DEBUG_LINE_NO:2058
  Else
    jsonutil.SetintValue(File, "NightgateInnVictoryTitleRank", -1) ; #DEBUG_LINE_NO:2060
  EndIf
  If PlayerRef.isinfaction(BaboFactionNightgateInnFuckedTitle) ; #DEBUG_LINE_NO:2063
    Int NightgateInnFuckedTitleRank = PlayerRef.getfactionrank(BaboFactionNightgateInnFuckedTitle) ; #DEBUG_LINE_NO:2064
    jsonutil.SetintValue(File, "NightgateInnFuckedTitleRank", NightgateInnFuckedTitleRank) ; #DEBUG_LINE_NO:2065
  Else
    jsonutil.SetintValue(File, "NightgateInnFuckedTitleRank", -1) ; #DEBUG_LINE_NO:2067
  EndIf
  If PlayerRef.isinfaction(BaboFactionInvestigationMarkarthTitle) ; #DEBUG_LINE_NO:2070
    Int InvestigationMarkarthTitleRank = PlayerRef.getfactionrank(BaboFactionInvestigationMarkarthTitle) ; #DEBUG_LINE_NO:2071
    jsonutil.SetintValue(File, "InvestigationMarkarthTitleRank", InvestigationMarkarthTitleRank) ; #DEBUG_LINE_NO:2072
  Else
    jsonutil.SetintValue(File, "InvestigationMarkarthTitleRank", -1) ; #DEBUG_LINE_NO:2074
  EndIf
  If PlayerRef.isinfaction(BaboFactionDeviousNobleSonFuckToyTitle) ; #DEBUG_LINE_NO:2077
    Int DeviousNobleSonFuckToyTitleRank = PlayerRef.getfactionrank(BaboFactionDeviousNobleSonFuckToyTitle) ; #DEBUG_LINE_NO:2078
    jsonutil.SetintValue(File, "DeviousNobleSonFuckToyTitleRank", DeviousNobleSonFuckToyTitleRank) ; #DEBUG_LINE_NO:2079
  Else
    jsonutil.SetintValue(File, "DeviousNobleSonFuckToyTitleRank", -1) ; #DEBUG_LINE_NO:2081
  EndIf
  If PlayerRef.isinfaction(BaboFactionChallengerFucktoyTitle) ; #DEBUG_LINE_NO:2084
    Int ChallengerFucktoyTitleRank = PlayerRef.getfactionrank(BaboFactionChallengerFucktoyTitle) ; #DEBUG_LINE_NO:2085
    jsonutil.SetintValue(File, "ChallengerFucktoyTitleRank", ChallengerFucktoyTitleRank) ; #DEBUG_LINE_NO:2086
  Else
    jsonutil.SetintValue(File, "ChallengerFucktoyTitleRank", -1) ; #DEBUG_LINE_NO:2088
  EndIf
  If PlayerRef.isinfaction(BaboFactionArgonianDisplayedFuckToyTitle) ; #DEBUG_LINE_NO:2091
    Int ArgonianDisplayedFuckToyTitleRank = PlayerRef.getfactionrank(BaboFactionArgonianDisplayedFuckToyTitle) ; #DEBUG_LINE_NO:2092
    jsonutil.SetintValue(File, "ArgonianDisplayedFuckToyTitleRank", ArgonianDisplayedFuckToyTitleRank) ; #DEBUG_LINE_NO:2093
  Else
    jsonutil.SetintValue(File, "ArgonianDisplayedFuckToyTitleRank", -1) ; #DEBUG_LINE_NO:2095
  EndIf
  If PlayerRef.isinfaction(BaboFactionArgonianDefeatedTitle) ; #DEBUG_LINE_NO:2098
    Int ArgonianDefeatedTitleRank = PlayerRef.getfactionrank(BaboFactionArgonianDefeatedTitle) ; #DEBUG_LINE_NO:2099
    jsonutil.SetintValue(File, "ArgonianDefeatedTitleRank", ArgonianDefeatedTitleRank) ; #DEBUG_LINE_NO:2100
  Else
    jsonutil.SetintValue(File, "ArgonianDefeatedTitleRank", -1) ; #DEBUG_LINE_NO:2102
  EndIf
  If PlayerRef.isinfaction(BaboFactionWarMaidenTitle) ; #DEBUG_LINE_NO:2105
    Int WarMaidenTitleRank = PlayerRef.getfactionrank(BaboFactionWarMaidenTitle) ; #DEBUG_LINE_NO:2106
    jsonutil.SetintValue(File, "WarMaidenTitleRank", WarMaidenTitleRank) ; #DEBUG_LINE_NO:2107
  Else
    jsonutil.SetintValue(File, "WarMaidenTitleRank", -1) ; #DEBUG_LINE_NO:2109
  EndIf
  If PlayerRef.isinfaction(BaboFactionPitifulHeroineTitle) ; #DEBUG_LINE_NO:2112
    Int PitifulHeroineTitleRank = PlayerRef.getfactionrank(BaboFactionPitifulHeroineTitle) ; #DEBUG_LINE_NO:2113
    jsonutil.SetintValue(File, "PitifulHeroineTitleRank", PitifulHeroineTitleRank) ; #DEBUG_LINE_NO:2114
  Else
    jsonutil.SetintValue(File, "PitifulHeroineTitleRank", -1) ; #DEBUG_LINE_NO:2116
  EndIf
  If PlayerRef.isinfaction(BaboFactionLoanSharkSlaveTitle) ; #DEBUG_LINE_NO:2119
    Int LoanSharkSlaveTitleRank = PlayerRef.getfactionrank(BaboFactionLoanSharkSlaveTitle) ; #DEBUG_LINE_NO:2120
    jsonutil.SetintValue(File, "LoanSharkSlaveTitleRank", LoanSharkSlaveTitleRank) ; #DEBUG_LINE_NO:2121
  Else
    jsonutil.SetintValue(File, "LoanSharkSlaveTitleRank", -1) ; #DEBUG_LINE_NO:2123
  EndIf
  If PlayerRef.isinfaction(BaboFactionBoozethatleadstoTitle) ; #DEBUG_LINE_NO:2126
    Int BoozethatleadstoRank = PlayerRef.getfactionrank(BaboFactionBoozethatleadstoTitle) ; #DEBUG_LINE_NO:2127
    jsonutil.SetintValue(File, "BoozethatleadstoTitleRank", BoozethatleadstoRank) ; #DEBUG_LINE_NO:2128
  Else
    jsonutil.SetintValue(File, "BoozethatleadstoTitleRank", -1) ; #DEBUG_LINE_NO:2130
  EndIf
  jsonutil.SetintValue(File, "BaboReputation", BaboReputation.getvalue() as Int) ; #DEBUG_LINE_NO:2133
  jsonutil.SetintValue(File, "BaboReputationBitch", BaboReputationBitch.getvalue() as Int) ; #DEBUG_LINE_NO:2134
  jsonutil.SetintValue(File, "BaboWillpower", PlayerRef.getfactionrank(BaboFactionStatWill)) ; #DEBUG_LINE_NO:2135
  jsonutil.SetintValue(File, "BaboSexlabStatusFHU", BaboSexlabStatusFHU.getvalue() as Int) ; #DEBUG_LINE_NO:2137
  jsonutil.SetintValue(File, "BaboCuminsideCreatures", BaboSexlabStatCreaturesCum.getvalue() as Int) ; #DEBUG_LINE_NO:2139
  jsonutil.SetintValue(File, "BaboCuminsideCreaturesBeast", BaboSexlabStatCreaturesBeast.getvalue() as Int) ; #DEBUG_LINE_NO:2140
  jsonutil.SetintValue(File, "BaboCuminsideCreaturesCanine", BaboSexlabStatCreaturesCanine.getvalue() as Int) ; #DEBUG_LINE_NO:2141
  jsonutil.SetintValue(File, "BaboCuminsideCreaturesChaurus", BaboSexlabStatCreaturesChaurus.getvalue() as Int) ; #DEBUG_LINE_NO:2142
  jsonutil.SetintValue(File, "BaboCuminsideCreaturesChaurus", BaboSexlabStatCreaturesChaurus.getvalue() as Int) ; #DEBUG_LINE_NO:2143
  jsonutil.SetintValue(File, "BaboCuminsideCreaturesDraugr", BaboSexlabStatCreaturesDraugr.getvalue() as Int) ; #DEBUG_LINE_NO:2144
  jsonutil.SetintValue(File, "BaboCuminsideCreaturesDwarven", BaboSexlabStatCreaturesDwarven.getvalue() as Int) ; #DEBUG_LINE_NO:2145
  jsonutil.SetintValue(File, "BaboCuminsideCreaturesFalmer", BaboSexlabStatCreaturesFalmer.getvalue() as Int) ; #DEBUG_LINE_NO:2146
  jsonutil.SetintValue(File, "BaboCuminsideCreaturesGargoyle", BaboSexlabStatCreaturesGargoyle.getvalue() as Int) ; #DEBUG_LINE_NO:2147
  jsonutil.SetintValue(File, "BaboCuminsideCreaturesGiant", BaboSexlabStatCreaturesGiant.getvalue() as Int) ; #DEBUG_LINE_NO:2148
  jsonutil.SetintValue(File, "BaboCuminsideCreaturesHorse", BaboSexlabStatCreaturesHorse.getvalue() as Int) ; #DEBUG_LINE_NO:2149
  jsonutil.SetintValue(File, "BaboCuminsideCreaturesRiekling", BaboSexlabStatCreaturesRiekling.getvalue() as Int) ; #DEBUG_LINE_NO:2150
  jsonutil.SetintValue(File, "BaboCuminsideCreaturesSpider", BaboSexlabStatCreaturesSpider.getvalue() as Int) ; #DEBUG_LINE_NO:2151
  jsonutil.SetintValue(File, "BaboCuminsideCreaturesTroll", BaboSexlabStatCreaturesTroll.getvalue() as Int) ; #DEBUG_LINE_NO:2152
  jsonutil.Save(File, False) ; #DEBUG_LINE_NO:2153
EndFunction

Function ImportStatus()
  Self.ImportStatusApproach() ; #DEBUG_LINE_NO:2158
EndFunction

Function ImportStatusApproach()
  If BaboSexlabApproach.getvalue() == 1 as Float ; #DEBUG_LINE_NO:2164
    String ApproachFile = "../BakaFactory/SLAPPStats.json" ; #DEBUG_LINE_NO:2165
    Int ApproachBackHuggedTimes = jsonutil.GetintValue(ApproachFile, "ApproachBackHuggedTimes", 0) ; #DEBUG_LINE_NO:2182
    Int ApproachbackHugMolestedTimes = jsonutil.GetintValue(ApproachFile, "ApproachbackHugMolestedTimes", 0) ; #DEBUG_LINE_NO:2183
    Int approachforcedkisstimes = jsonutil.GetintValue(ApproachFile, "approachforcedkisstimes", 0) ; #DEBUG_LINE_NO:2184
    Int approachforsextimes = jsonutil.GetintValue(ApproachFile, "approachforsextimes", 0) ; #DEBUG_LINE_NO:2185
    Int approachhellotimes = jsonutil.GetintValue(ApproachFile, "approachhellotimes", 0) ; #DEBUG_LINE_NO:2186
    Int approachmolesttimes = jsonutil.GetintValue(ApproachFile, "approachmolesttimes", 0) ; #DEBUG_LINE_NO:2187
    Int approachnormalsextimes = jsonutil.GetintValue(ApproachFile, "approachnormalsextimes", 0) ; #DEBUG_LINE_NO:2188
    Int approachprostitutiontimes = jsonutil.GetintValue(ApproachFile, "approachprostitutiontimes", 0) ; #DEBUG_LINE_NO:2189
    Int approachrapedtimes = jsonutil.GetintValue(ApproachFile, "approachrapedtimes", 0) ; #DEBUG_LINE_NO:2190
    Int approachreceivedgifttimes = jsonutil.GetintValue(ApproachFile, "approachreceivedgifttimes", 0) ; #DEBUG_LINE_NO:2191
    Int approachspankedtimes = jsonutil.GetintValue(ApproachFile, "approachspankedtimes", 0) ; #DEBUG_LINE_NO:2192
    Int approachsweetkisstimes = jsonutil.GetintValue(ApproachFile, "approachsweetkisstimes", 0) ; #DEBUG_LINE_NO:2193
    Int approachverbalinsulttimes = jsonutil.GetintValue(ApproachFile, "approachverbalinsulttimes", 0) ; #DEBUG_LINE_NO:2194
    BaboSexlabApproachBackHugged.setvalue(ApproachBackHuggedTimes as Float) ; #DEBUG_LINE_NO:2196
    BaboSexlabApproachBackHugMolested.setvalue(ApproachbackHugMolestedTimes as Float) ; #DEBUG_LINE_NO:2197
    BaboSexlabApproachForcedKiss.setvalue(approachforcedkisstimes as Float) ; #DEBUG_LINE_NO:2198
    BaboSexlabApproachForSex.setvalue(approachforsextimes as Float) ; #DEBUG_LINE_NO:2199
    BaboSexlabApproachForHello.setvalue(approachhellotimes as Float) ; #DEBUG_LINE_NO:2200
    BaboSexlabApproachForSpank.setvalue(approachspankedtimes as Float) ; #DEBUG_LINE_NO:2201
  EndIf
EndFunction

Function CD_FHU()
  If BaboFHU.getvalue() == 1 as Float ; #DEBUG_LINE_NO:2212
    SR_InflateFaction = Game.GetFormFromFile(43409, "sr_FillHerUp.esp") as Faction ; #DEBUG_LINE_NO:2213
  EndIf
EndFunction

Function CD_BF()
  If BaboBeeingFemale.getvalue() == 1 as Float ; #DEBUG_LINE_NO:2218
    _BF_ParentFaction = Game.GetFormFromFile(33864, "BeeingFemale.esm") as Faction ; #DEBUG_LINE_NO:2219
    _BFPlayerState = Game.GetFormFromFile(396483, "BeeingFemale.esm") as GlobalVariable ; #DEBUG_LINE_NO:2220
  EndIf
EndFunction

Function CD_SLS()
  If BaboSexlabSurvivalGlobal.getvalue() == 1 as Float ; #DEBUG_LINE_NO:2225
    _SLS_BikiniArmor = Game.GetFormFromFile(301159, "SL Survival.esp") as Keyword ; #DEBUG_LINE_NO:2226
    _SLS_LicenceMagic = Game.GetFormFromFile(269140, "SL Survival.esp") as Book ; #DEBUG_LINE_NO:2227
    _SLS_LicenceArmor = Game.GetFormFromFile(277422, "SL Survival.esp") as Book ; #DEBUG_LINE_NO:2228
    _SLS_LicenceWeapon = Game.GetFormFromFile(277423, "SL Survival.esp") as Book ; #DEBUG_LINE_NO:2229
    _SLS_LicenceBikini = Game.GetFormFromFile(299719, "SL Survival.esp") as Book ; #DEBUG_LINE_NO:2230
    _SLS_LicenceClothes = Game.GetFormFromFile(299723, "SL Survival.esp") as Book ; #DEBUG_LINE_NO:2231
  EndIf
EndFunction

Function CD_DDI()
  If BaboDDI.getvalue() == 1 as Float ; #DEBUG_LINE_NO:2236
    zad_DeviousBelt = Game.GetFormFromFile(13104, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2237
    zad_DeviousPlug = Game.GetFormFromFile(13105, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2238
    zad_Lockable = Game.GetFormFromFile(14484, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2239
    zad_DeviousCollar = Game.GetFormFromFile(15863, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2240
    zad_DeviousBra = Game.GetFormFromFile(15866, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2241
    zad_DeviousPiercingsNipple = Game.GetFormFromFile(51769, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2242
    zad_DeviousArmbinder = Game.GetFormFromFile(51770, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2243
    zad_DeviousBlindfold = Game.GetFormFromFile(72474, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2244
    zad_DeviousHarness = Game.GetFormFromFile(97347, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2245
    zad_DeviousPlugVaginal = Game.GetFormFromFile(122236, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2246
    zad_DeviousPlugAnal = Game.GetFormFromFile(122237, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2247
    zad_DeviousPiercingsVaginal = Game.GetFormFromFile(147056, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2248
    zad_DeviousBoots = Game.GetFormFromFile(163625, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2249
    zad_DeviousHood = Game.GetFormFromFile(176034, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2250
    zad_DeviousSuit = Game.GetFormFromFile(176035, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2251
    zad_DeviousYoke = Game.GetFormFromFile(181553, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2252
    zad_DeviousGag = Game.GetFormFromFile(32440, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2253
    zad_DeviousCorset = Game.GetFormFromFile(163624, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2254
    zad_DeviousArmCuffs = Game.GetFormFromFile(15865, "Devious Devices - Assets.esm") as Keyword ; #DEBUG_LINE_NO:2255
    zad_ChastityKey = Game.GetFormFromFile(35407, "Devious Devices - Integration.esm") as Key ; #DEBUG_LINE_NO:2269
    zad_PiercingsRemovalTool = Game.GetFormFromFile(264612, "Devious Devices - Integration.esm") as Key ; #DEBUG_LINE_NO:2270
    zad_RestraintsKey = Game.GetFormFromFile(96095, "Devious Devices - Integration.esm") as Key ; #DEBUG_LINE_NO:2271
    zadquest = Game.GetFormFromFile(63012, "Devious Devices - Integration.esm") as Quest ; #DEBUG_LINE_NO:2273
  EndIf
EndFunction

Function CD_Fertility()
  If BaboFertility.getvalue() == 1 as Float ; #DEBUG_LINE_NO:2278
    Quest HandlerQuest = Game.GetFormFromFile(3426, "Fertility Mode.esm") as Quest ; #DEBUG_LINE_NO:2279
    _JSW_BB_PotionFertility = Game.GetFormFromFile(22738, "Fertility Mode.esm") as Potion ; #DEBUG_LINE_NO:2280
    FertilityLastBirth = (HandlerQuest as _jsw_bb_storage).LastBirth ; #DEBUG_LINE_NO:2281
  EndIf
EndFunction

Function CD_EstrusChaurus()
  If BaboEstrusChaurus.getvalue() == 1 as Float ; #DEBUG_LINE_NO:2286
    zzEstrusChaurusBreederFaction = Game.GetFormFromFile(90281, "EstrusChaurus.esp") as Faction ; #DEBUG_LINE_NO:2287
  EndIf
EndFunction

Function Backtoinitial(Actor act)
  act.ClearExpressionOverride() ; #DEBUG_LINE_NO:2295
EndFunction

Function RandomAheMenu(Actor act)
  Int random = Utility.RandomInt(1, 6) ; #DEBUG_LINE_NO:2299
  Self.AheMenu(act, random, True, False) ; #DEBUG_LINE_NO:2300
EndFunction

Function RandomPainMenu(Actor act)
  Int random = Utility.RandomInt(1, 8) ; #DEBUG_LINE_NO:2304
  Self.PainMenu(act, random, True, False) ; #DEBUG_LINE_NO:2305
EndFunction

Function GagPhoneme(Actor akactor, Int index)
  If index > 0 ; #DEBUG_LINE_NO:2309
    mfgconsolefunc.SetPhoneme(akactor, 1, 100) ; #DEBUG_LINE_NO:2310
    mfgconsolefunc.SetPhoneme(akactor, 11, 70) ; #DEBUG_LINE_NO:2311
  Else
    mfgconsolefunc.ResetPhonemeModifier(akactor) ; #DEBUG_LINE_NO:2313
  EndIf
EndFunction

Function PainMenu(Actor act, Int index, Bool bmouth = true, Bool bgag = false)
  If index == 1 ; #DEBUG_LINE_NO:2318
    act.SetExpressionOverride(3, 50) ; #DEBUG_LINE_NO:2319
    mfgconsolefunc.SetModifier(act, 2, 10) ; #DEBUG_LINE_NO:2320
    mfgconsolefunc.SetModifier(act, 3, 10) ; #DEBUG_LINE_NO:2321
    mfgconsolefunc.SetModifier(act, 6, 50) ; #DEBUG_LINE_NO:2322
    mfgconsolefunc.SetModifier(act, 7, 50) ; #DEBUG_LINE_NO:2323
    mfgconsolefunc.SetModifier(act, 11, 30) ; #DEBUG_LINE_NO:2324
    mfgconsolefunc.SetModifier(act, 12, 30) ; #DEBUG_LINE_NO:2325
    mfgconsolefunc.SetModifier(act, 13, 30) ; #DEBUG_LINE_NO:2326
  ElseIf index == 2 ; #DEBUG_LINE_NO:2327
    act.SetExpressionOverride(8, 50) ; #DEBUG_LINE_NO:2328
    mfgconsolefunc.SetModifier(act, 0, 100) ; #DEBUG_LINE_NO:2329
    mfgconsolefunc.SetModifier(act, 1, 100) ; #DEBUG_LINE_NO:2330
    mfgconsolefunc.SetModifier(act, 2, 100) ; #DEBUG_LINE_NO:2331
    mfgconsolefunc.SetModifier(act, 3, 100) ; #DEBUG_LINE_NO:2332
    mfgconsolefunc.SetModifier(act, 4, 100) ; #DEBUG_LINE_NO:2333
    mfgconsolefunc.SetModifier(act, 5, 100) ; #DEBUG_LINE_NO:2334
  ElseIf index == 3 ; #DEBUG_LINE_NO:2335
    act.SetExpressionOverride(9, 50) ; #DEBUG_LINE_NO:2336
    mfgconsolefunc.SetModifier(act, 2, 100) ; #DEBUG_LINE_NO:2337
    mfgconsolefunc.SetModifier(act, 3, 100) ; #DEBUG_LINE_NO:2338
    mfgconsolefunc.SetModifier(act, 4, 100) ; #DEBUG_LINE_NO:2339
    mfgconsolefunc.SetModifier(act, 5, 100) ; #DEBUG_LINE_NO:2340
    mfgconsolefunc.SetModifier(act, 11, 90) ; #DEBUG_LINE_NO:2341
  ElseIf index == 4 ; #DEBUG_LINE_NO:2342
    act.SetExpressionOverride(8, 50) ; #DEBUG_LINE_NO:2343
    mfgconsolefunc.SetModifier(act, 0, 100) ; #DEBUG_LINE_NO:2344
    mfgconsolefunc.SetModifier(act, 1, 100) ; #DEBUG_LINE_NO:2345
    mfgconsolefunc.SetModifier(act, 2, 100) ; #DEBUG_LINE_NO:2346
    mfgconsolefunc.SetModifier(act, 3, 100) ; #DEBUG_LINE_NO:2347
    mfgconsolefunc.SetModifier(act, 4, 100) ; #DEBUG_LINE_NO:2348
    mfgconsolefunc.SetModifier(act, 5, 100) ; #DEBUG_LINE_NO:2349
  ElseIf index == 5 ; #DEBUG_LINE_NO:2350
    act.SetExpressionOverride(9, 50) ; #DEBUG_LINE_NO:2351
    mfgconsolefunc.SetModifier(act, 2, 100) ; #DEBUG_LINE_NO:2352
    mfgconsolefunc.SetModifier(act, 3, 100) ; #DEBUG_LINE_NO:2353
    mfgconsolefunc.SetModifier(act, 4, 100) ; #DEBUG_LINE_NO:2354
    mfgconsolefunc.SetModifier(act, 5, 100) ; #DEBUG_LINE_NO:2355
    mfgconsolefunc.SetModifier(act, 11, 90) ; #DEBUG_LINE_NO:2356
  ElseIf index == 6 ; #DEBUG_LINE_NO:2357
    act.SetExpressionOverride(3, 50) ; #DEBUG_LINE_NO:2358
    mfgconsolefunc.SetModifier(act, 11, 50) ; #DEBUG_LINE_NO:2359
    mfgconsolefunc.SetModifier(act, 13, 14) ; #DEBUG_LINE_NO:2360
  ElseIf index == 7 ; #DEBUG_LINE_NO:2361
    act.SetExpressionOverride(1, 50) ; #DEBUG_LINE_NO:2362
    mfgconsolefunc.SetModifier(act, 0, 30) ; #DEBUG_LINE_NO:2363
    mfgconsolefunc.SetModifier(act, 1, 20) ; #DEBUG_LINE_NO:2364
    mfgconsolefunc.SetModifier(act, 12, 90) ; #DEBUG_LINE_NO:2365
    mfgconsolefunc.SetModifier(act, 13, 90) ; #DEBUG_LINE_NO:2366
  ElseIf index == 8 ; #DEBUG_LINE_NO:2367
    act.SetExpressionOverride(3, 50) ; #DEBUG_LINE_NO:2368
    mfgconsolefunc.SetModifier(act, 0, 30) ; #DEBUG_LINE_NO:2369
    mfgconsolefunc.SetModifier(act, 1, 30) ; #DEBUG_LINE_NO:2370
    mfgconsolefunc.SetModifier(act, 4, 80) ; #DEBUG_LINE_NO:2371
    mfgconsolefunc.SetModifier(act, 5, 80) ; #DEBUG_LINE_NO:2372
  ElseIf index == 9 ; #DEBUG_LINE_NO:2373
    act.SetExpressionOverride(3, 50) ; #DEBUG_LINE_NO:2374
    mfgconsolefunc.SetModifier(act, 0, 80) ; #DEBUG_LINE_NO:2375
    mfgconsolefunc.SetModifier(act, 1, 80) ; #DEBUG_LINE_NO:2376
  EndIf
  If bmouth && bgag == False ; #DEBUG_LINE_NO:2378
    If index == 1 ; #DEBUG_LINE_NO:2379
      mfgconsolefunc.SetPhoneme(act, 0, 20) ; #DEBUG_LINE_NO:2380
    ElseIf index == 2 ; #DEBUG_LINE_NO:2381
      mfgconsolefunc.SetPhoneme(act, 2, 100) ; #DEBUG_LINE_NO:2382
      mfgconsolefunc.SetPhoneme(act, 5, 100) ; #DEBUG_LINE_NO:2383
      mfgconsolefunc.SetPhoneme(act, 11, 40) ; #DEBUG_LINE_NO:2384
    ElseIf index == 3 ; #DEBUG_LINE_NO:2385
      mfgconsolefunc.SetPhoneme(act, 0, 100) ; #DEBUG_LINE_NO:2386
      mfgconsolefunc.SetPhoneme(act, 2, 100) ; #DEBUG_LINE_NO:2387
      mfgconsolefunc.SetPhoneme(act, 11, 40) ; #DEBUG_LINE_NO:2388
    ElseIf index == 4 ; #DEBUG_LINE_NO:2389
      mfgconsolefunc.SetPhoneme(act, 2, 100) ; #DEBUG_LINE_NO:2390
      mfgconsolefunc.SetPhoneme(act, 5, 40) ; #DEBUG_LINE_NO:2391
    ElseIf index == 5 ; #DEBUG_LINE_NO:2392
      mfgconsolefunc.SetPhoneme(act, 0, 30) ; #DEBUG_LINE_NO:2393
      mfgconsolefunc.SetPhoneme(act, 2, 30) ; #DEBUG_LINE_NO:2394
    ElseIf index == 6 ; #DEBUG_LINE_NO:2395
      mfgconsolefunc.SetPhoneme(act, 2, 50) ; #DEBUG_LINE_NO:2396
      mfgconsolefunc.SetPhoneme(act, 13, 20) ; #DEBUG_LINE_NO:2397
      mfgconsolefunc.SetPhoneme(act, 15, 40) ; #DEBUG_LINE_NO:2398
    ElseIf index == 7 ; #DEBUG_LINE_NO:2399
      mfgconsolefunc.SetPhoneme(act, 2, 100) ; #DEBUG_LINE_NO:2400
      mfgconsolefunc.SetPhoneme(act, 5, 80) ; #DEBUG_LINE_NO:2401
    ElseIf index == 8 ; #DEBUG_LINE_NO:2402
      mfgconsolefunc.SetPhoneme(act, 2, 100) ; #DEBUG_LINE_NO:2403
      mfgconsolefunc.SetPhoneme(act, 4, 50) ; #DEBUG_LINE_NO:2404
      mfgconsolefunc.SetPhoneme(act, 5, 100) ; #DEBUG_LINE_NO:2405
    ElseIf index == 9 ; #DEBUG_LINE_NO:2406
      mfgconsolefunc.SetPhoneme(act, 1, 30) ; #DEBUG_LINE_NO:2407
    EndIf
  ElseIf bgag
    mfgconsolefunc.SetPhoneme(act, 1, 100) ; #DEBUG_LINE_NO:2410
    mfgconsolefunc.SetPhoneme(act, 11, 70) ; #DEBUG_LINE_NO:2411
  EndIf
EndFunction

Function AheMenu(Actor act, Int index, Bool bmouth = true, Bool bgag = false)
  If index == 1 ; #DEBUG_LINE_NO:2416
    act.SetExpressionOverride(4, 50) ; #DEBUG_LINE_NO:2417
    mfgconsolefunc.SetModifier(act, 0, 30) ; #DEBUG_LINE_NO:2418
    mfgconsolefunc.SetModifier(act, 1, 30) ; #DEBUG_LINE_NO:2419
    mfgconsolefunc.SetModifier(act, 4, 30) ; #DEBUG_LINE_NO:2420
    mfgconsolefunc.SetModifier(act, 5, 30) ; #DEBUG_LINE_NO:2421
    mfgconsolefunc.SetModifier(act, 6, 10) ; #DEBUG_LINE_NO:2422
    mfgconsolefunc.SetModifier(act, 7, 10) ; #DEBUG_LINE_NO:2423
    mfgconsolefunc.SetModifier(act, 11, 80) ; #DEBUG_LINE_NO:2424
    mfgconsolefunc.SetModifier(act, 12, 70) ; #DEBUG_LINE_NO:2425
    mfgconsolefunc.SetModifier(act, 13, 80) ; #DEBUG_LINE_NO:2426
  ElseIf index == 2 ; #DEBUG_LINE_NO:2427
    act.SetExpressionOverride(4, 50) ; #DEBUG_LINE_NO:2428
    mfgconsolefunc.SetModifier(act, 0, 50) ; #DEBUG_LINE_NO:2429
    mfgconsolefunc.SetModifier(act, 1, 30) ; #DEBUG_LINE_NO:2430
    mfgconsolefunc.SetModifier(act, 2, 100) ; #DEBUG_LINE_NO:2431
    mfgconsolefunc.SetModifier(act, 4, 30) ; #DEBUG_LINE_NO:2432
    mfgconsolefunc.SetModifier(act, 5, 30) ; #DEBUG_LINE_NO:2433
    mfgconsolefunc.SetModifier(act, 7, 10) ; #DEBUG_LINE_NO:2434
    mfgconsolefunc.SetModifier(act, 11, 90) ; #DEBUG_LINE_NO:2435
    mfgconsolefunc.SetModifier(act, 12, 30) ; #DEBUG_LINE_NO:2436
  ElseIf index == 3 ; #DEBUG_LINE_NO:2437
    act.SetExpressionOverride(2, 60) ; #DEBUG_LINE_NO:2438
    mfgconsolefunc.SetModifier(act, 11, 180) ; #DEBUG_LINE_NO:2439
    mfgconsolefunc.SetModifier(act, 9, 43) ; #DEBUG_LINE_NO:2440
  ElseIf index == 4 ; #DEBUG_LINE_NO:2441
    act.SetExpressionOverride(2, 60) ; #DEBUG_LINE_NO:2442
    mfgconsolefunc.SetModifier(act, 7, 77) ; #DEBUG_LINE_NO:2443
    mfgconsolefunc.SetModifier(act, 11, 180) ; #DEBUG_LINE_NO:2444
    mfgconsolefunc.SetModifier(act, 11, 60) ; #DEBUG_LINE_NO:2445
  ElseIf index == 5 ; #DEBUG_LINE_NO:2446
    act.SetExpressionOverride(2, 70) ; #DEBUG_LINE_NO:2447
    mfgconsolefunc.SetModifier(act, 4, 100) ; #DEBUG_LINE_NO:2448
    mfgconsolefunc.SetModifier(act, 5, 100) ; #DEBUG_LINE_NO:2449
    mfgconsolefunc.SetModifier(act, 6, 100) ; #DEBUG_LINE_NO:2450
    mfgconsolefunc.SetModifier(act, 7, 100) ; #DEBUG_LINE_NO:2451
    mfgconsolefunc.SetModifier(act, 10, 100) ; #DEBUG_LINE_NO:2452
    mfgconsolefunc.SetModifier(act, 11, 100) ; #DEBUG_LINE_NO:2453
  ElseIf index == 6 ; #DEBUG_LINE_NO:2454
    act.SetExpressionOverride(4, 70) ; #DEBUG_LINE_NO:2455
    mfgconsolefunc.SetModifier(act, 3, 70) ; #DEBUG_LINE_NO:2456
    mfgconsolefunc.SetModifier(act, 11, 100) ; #DEBUG_LINE_NO:2457
    mfgconsolefunc.SetModifier(act, 13, 50) ; #DEBUG_LINE_NO:2458
  EndIf
  If bmouth && bgag == False ; #DEBUG_LINE_NO:2460
    If index == 1 ; #DEBUG_LINE_NO:2461
      mfgconsolefunc.SetPhoneme(act, 3, 50) ; #DEBUG_LINE_NO:2462
      mfgconsolefunc.SetPhoneme(act, 11, 50) ; #DEBUG_LINE_NO:2463
      mfgconsolefunc.SetPhoneme(act, 15, 50) ; #DEBUG_LINE_NO:2464
    ElseIf index == 2 ; #DEBUG_LINE_NO:2465
      mfgconsolefunc.SetPhoneme(act, 3, 50) ; #DEBUG_LINE_NO:2466
      mfgconsolefunc.SetPhoneme(act, 8, 50) ; #DEBUG_LINE_NO:2467
      mfgconsolefunc.SetPhoneme(act, 14, 50) ; #DEBUG_LINE_NO:2468
    ElseIf index == 3 ; #DEBUG_LINE_NO:2469
      mfgconsolefunc.SetPhoneme(act, 0, 43) ; #DEBUG_LINE_NO:2470
      mfgconsolefunc.SetPhoneme(act, 4, 7) ; #DEBUG_LINE_NO:2471
      mfgconsolefunc.SetPhoneme(act, 14, 90) ; #DEBUG_LINE_NO:2472
    ElseIf index == 4 ; #DEBUG_LINE_NO:2473
      mfgconsolefunc.SetPhoneme(act, 0, 20) ; #DEBUG_LINE_NO:2474
      mfgconsolefunc.SetPhoneme(act, 1, 100) ; #DEBUG_LINE_NO:2475
      mfgconsolefunc.SetPhoneme(act, 14, 3) ; #DEBUG_LINE_NO:2476
    ElseIf index == 5 ; #DEBUG_LINE_NO:2477
      mfgconsolefunc.SetPhoneme(act, 1, 7) ; #DEBUG_LINE_NO:2478
      mfgconsolefunc.SetPhoneme(act, 5, 100) ; #DEBUG_LINE_NO:2479
      mfgconsolefunc.SetPhoneme(act, 11, 33) ; #DEBUG_LINE_NO:2480
      mfgconsolefunc.SetPhoneme(act, 12, 3) ; #DEBUG_LINE_NO:2481
      mfgconsolefunc.SetPhoneme(act, 15, 16) ; #DEBUG_LINE_NO:2482
    ElseIf index == 6 ; #DEBUG_LINE_NO:2483
      mfgconsolefunc.SetPhoneme(act, 1, 20) ; #DEBUG_LINE_NO:2484
      mfgconsolefunc.SetPhoneme(act, 8, 70) ; #DEBUG_LINE_NO:2485
      mfgconsolefunc.SetPhoneme(act, 13, 30) ; #DEBUG_LINE_NO:2486
      mfgconsolefunc.SetPhoneme(act, 15, 4) ; #DEBUG_LINE_NO:2487
    EndIf
  ElseIf bgag
    mfgconsolefunc.SetPhoneme(act, 1, 100) ; #DEBUG_LINE_NO:2490
    mfgconsolefunc.SetPhoneme(act, 11, 70) ; #DEBUG_LINE_NO:2491
  EndIf
EndFunction