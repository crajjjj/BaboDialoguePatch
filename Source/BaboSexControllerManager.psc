ScriptName BaboSexControllerManager Extends Quest

;-- Variables ---------------------------------------
String DamagevalueString
String DamagevalueString02
Float DownedTime
Float FillDifficulty = 0.0
Float FillThreshold = 0.0
Bool IsFemale
Bool LeftRight = True
Quest MyQuest
Float PresetFillThreshold = 0.0
Int ResistTime = 0
Int SoundTime = 0
Int StrafeL
Int StrafeR
Int Time = 0
Bool bQTETextAbort
String file = "../BaboDialogue/BakaStrings.json"
Bool isplaying = False

;-- Properties --------------------------------------
Keyword Property ActorTypeNPC Auto
Keyword Property ArmorCuirass Auto
babodialogueconfigmenu Property BDMCM Auto
babodiamonitorscript Property BDMScript Auto
Armor Property BaboAnkleIronBlack Auto
Armor Property BaboAnkleRope01 Auto
GlobalVariable Property BaboAssaultAttemptCountInstance Auto
Quest Property BaboBadEnd Auto
Faction Property BaboBehaviorPatternFaction Auto
Faction Property BaboBigGuySLFaction Auto
Armor Property BaboBountyRingSerialKiller Auto
FormList Property BaboCL08BYOH01StalkerList Auto
FormList Property BaboCL08BYOH02StalkerList Auto
FormList Property BaboCL08BYOH03StalkerList Auto
FormList Property BaboCL08MiscStalkerList Auto
FormList Property BaboCL08RavenRockStalkerList Auto
FormList Property BaboCL08RiftenStalkerList Auto
FormList Property BaboCL08SolitudeStalkerList Auto
FormList Property BaboCL08WindhelmStalkerList Auto
Spell Property BaboCalmSpell Auto
GlobalVariable Property BaboChangeLocation07Variable Auto
GlobalVariable Property BaboChangeLocation08FanBYOH01 Auto
GlobalVariable Property BaboChangeLocation08FanBYOH02 Auto
GlobalVariable Property BaboChangeLocation08FanBYOH03 Auto
GlobalVariable Property BaboChangeLocation08FanCustom01 Auto
GlobalVariable Property BaboChangeLocation08FanCustom02 Auto
GlobalVariable Property BaboChangeLocation08FanCustom03 Auto
GlobalVariable Property BaboChangeLocation08FanRiften Auto
GlobalVariable Property BaboChangeLocation08FanSolitude Auto
GlobalVariable Property BaboChangeLocation08FanWindhelm Auto
GlobalVariable Property BaboChangeLocation08Fansolstheim Auto
GlobalVariable Property BaboChangeLocation08FraudBYOH01 Auto
GlobalVariable Property BaboChangeLocation08FraudBYOH02 Auto
GlobalVariable Property BaboChangeLocation08FraudBYOH03 Auto
GlobalVariable Property BaboChangeLocation08FraudMIsc Auto
GlobalVariable Property BaboChangeLocation08FraudRiften Auto
GlobalVariable Property BaboChangeLocation08FraudSolitude Auto
GlobalVariable Property BaboChangeLocation08FraudWindhelm Auto
GlobalVariable Property BaboChangeLocation08Fraudsolstheim Auto
Quest Property BaboChangeLocationEvent01 Auto
Scene Property BaboChangeLocationEvent01Scene01 Auto
Scene Property BaboChangeLocationEvent01Scene02 Auto
Scene Property BaboChangeLocationEvent01Scene03 Auto
Scene Property BaboChangeLocationEvent01Scene04 Auto
Scene Property BaboChangeLocationEvent01Scene05 Auto
Scene Property BaboChangeLocationEvent01Scene06 Auto
Quest Property BaboChangeLocationEvent02 Auto
Quest Property BaboChangeLocationEvent02Coast Auto
Scene Property BaboChangeLocationEvent02CoastScene01 Auto
Quest Property BaboChangeLocationEvent02DLC02 Auto
Quest Property BaboChangeLocationEvent02Forest Auto
Scene Property BaboChangeLocationEvent02ForestScene01 Auto
Quest Property BaboChangeLocationEvent02ForestSnow Auto
Scene Property BaboChangeLocationEvent02ForestSnowScene01 Auto
Quest Property BaboChangeLocationEvent02Marsh Auto
Scene Property BaboChangeLocationEvent02MarshScene01 Auto
Quest Property BaboChangeLocationEvent02Mountain Auto
Scene Property BaboChangeLocationEvent02MountainScene01 Auto
Quest Property BaboChangeLocationEvent02MountainSnow Auto
Scene Property BaboChangeLocationEvent02MountainSnowScene01 Auto
Quest Property BaboChangeLocationEvent02Plain Auto
Scene Property BaboChangeLocationEvent02PlainScene01 Auto
Quest Property BaboChangeLocationEvent02PlainSnow Auto
Scene Property BaboChangeLocationEvent02PlainSnowScene01 Auto
Scene Property BaboChangeLocationEvent02Scene01 Auto
Scene Property BaboChangeLocationEvent02Scene02 Auto
Quest Property BaboChangeLocationEvent03 Auto
Quest Property BaboChangeLocationEvent04a Auto
Quest Property BaboChangeLocationEvent05 Auto
Scene Property BaboChangeLocationEvent05Scene02 Auto
Scene Property BaboChangeLocationEvent05Scene03 Auto
Scene Property BaboChangeLocationEvent05Scene04 Auto
Quest Property BaboChangeLocationEvent06 Auto
Scene Property BaboChangeLocationEvent06Scene05 Auto
Scene Property BaboChangeLocationEvent06Scene06 Auto
Quest Property BaboChangeLocationEvent07 Auto
Scene Property BaboChangeLocationEvent07Scene00 Auto
Scene Property BaboChangeLocationEvent07Scene02 Auto
Scene Property BaboChangeLocationEvent07Scene03 Auto
Scene Property BaboChangeLocationEvent07Scene04 Auto
Scene Property BaboChangeLocationEvent07Scene05 Auto
Scene Property BaboChangeLocationEvent07Scene06 Auto
Scene Property BaboChangeLocationEvent07SceneWellRested Auto
Quest Property BaboChangeLocationEvent08 Auto
Scene Property BaboChangeLocationEvent08AutographScene01 Auto
Scene Property BaboChangeLocationEvent08AutographScene02 Auto
Scene Property BaboChangeLocationEvent08AutographScene03 Auto
Scene Property BaboChangeLocationEvent08AutographScene04 Auto
Scene Property BaboChangeLocationEvent08AutographScene05 Auto
Scene Property BaboChangeLocationEvent08AutographScene06 Auto
Scene Property BaboChangeLocationEvent08AutographScene07 Auto
FormList Property BaboChangeLocationEvent08BYOH01List Auto
FormList Property BaboChangeLocationEvent08BYOH02List Auto
FormList Property BaboChangeLocationEvent08BYOH03List Auto
FormList Property BaboChangeLocationEvent08Custom01List Auto
FormList Property BaboChangeLocationEvent08Custom02List Auto
FormList Property BaboChangeLocationEvent08Custom03List Auto
Faction Property BaboChangeLocationEvent08Faction Auto
Faction Property BaboChangeLocationEvent08FanFaction Auto
FormList Property BaboChangeLocationEvent08RiftenList Auto
FormList Property BaboChangeLocationEvent08SolitudeList Auto
FormList Property BaboChangeLocationEvent08SolstheimList Auto
FormList Property BaboChangeLocationEvent08WindhelmList Auto
Scene Property BaboChangeLocationEvent10Scene01 Auto
Scene Property BaboChangeLocationEvent10Scene02 Auto
Armor Property BaboCollarLeatherBinds Auto
ObjectReference Property BaboConfiscatedChestSolitudeRef Auto
Armor Property BaboCumLowerBod1Playable Auto
Armor Property BaboCumMesh1Playable Auto
Armor Property BaboCumUpperBodyPlayable Auto
Armor Property BaboCumVaginaMeshPlayable Auto
Idle Property BaboDefeatedCollapseLoop01 Auto
Idle Property BaboDefeatedPanting01 Auto
Perk Property BaboDia_Trauma_VulnerabletoRieklingPerk Auto
Quest Property BaboDialogueCLEvent06 Auto
Quest Property BaboDialogueHirelings Auto
Faction Property BaboDialogueHuggedFaction Auto
Quest Property BaboDialogueWhiterun Auto
Package Property BaboDoNothing Auto
Sound Property BaboDoorKnobMarker Auto
ObjectReference Property BaboDumpsterRef Auto
FormList Property BaboEdibleCheapFormList Auto
FormList Property BaboEdibleCheapSusFormList Auto
Sound Property BaboEjaculationInnerMarker Auto
Sound Property BaboEjaculationOuterMarker Auto
Quest Property BaboEncounter01 Auto
Scene Property BaboEncounter01Scene01 Auto
Scene Property BaboEncounter01Scene02 Auto
Scene Property BaboEncounter01Scene03 Auto
Scene Property BaboEncounter01Scene04 Auto
Scene Property BaboEncounter01Scene05 Auto
Quest Property BaboEncounter02 Auto
Quest Property BaboEncounter03 Auto
Scene Property BaboEncounter03Scene01 Auto
Scene Property BaboEncounter03Scene02 Auto
Scene Property BaboEncounter03Scene03 Auto
Quest Property BaboEncounter04 Auto
Scene Property BaboEncounter04Scene01 Auto
Scene Property BaboEncounter04Scene02 Auto
Scene Property BaboEncounter04Scene03 Auto
Quest Property BaboEncounter05 Auto
Scene Property BaboEncounter05Scene01 Auto
Scene Property BaboEncounter05Scene02 Auto
Quest Property BaboEncounter06 Auto
Quest Property BaboEncounter07 Auto
Scene Property BaboEncounter07Scene01 Auto
Scene Property BaboEncounter07Scene02 Auto
Scene Property BaboEncounter07Scene03 Auto
Scene Property BaboEncounter07Scene04 Auto
Scene Property BaboEncounter07Scene05 Auto
Quest Property BaboEncounter08 Auto
Quest Property BaboEncounter09 Auto
Scene Property BaboEncounter09Scene01 Auto
Scene Property BaboEncounter09Scene02 Auto
Quest Property BaboEncounter10 Auto
Quest Property BaboEncounter11 Auto
Scene Property BaboEncounter11Scene01 Auto
Scene Property BaboEncounter11Scene02 Auto
Scene Property BaboEncounter11Scene03 Auto
Scene Property BaboEncounter11Scene04 Auto
Quest Property BaboEncounter12 Auto
Quest Property BaboEncounter13 Auto
Scene Property BaboEncounter13PayDebt Auto
Scene Property BaboEncounter13SceneAfterSex Auto
Scene Property BaboEncounter13SceneBeforeFight Auto
Scene Property BaboEncounter13SceneDefeated Auto
Scene Property BaboEncounter13SceneIgnore Auto
Scene Property BaboEncounter13SceneNoFight Auto
Scene Property BaboEncounter13SceneStart Auto
Quest Property BaboEventAnimalCare Auto
Quest Property BaboEventAnimalCareMarkarth Auto
Scene Property BaboEventAnimalCareMarkarthScene01 Auto
Scene Property BaboEventAnimalCareMarkarthScene02 Auto
Scene Property BaboEventAnimalCareMarkarthScene03 Auto
Scene Property BaboEventAnimalCareMarkarthScene04 Auto
Scene Property BaboEventAnimalCareMarkarthScene05 Auto
Scene Property BaboEventAnimalCareMarkarthScene06 Auto
Scene Property BaboEventAnimalCareMarkarthScene07 Auto
Scene Property BaboEventAnimalCareMarkarthSceneStart Auto
Scene Property BaboEventAnimalCareSceneHorse01 Auto
ActorBase Property BaboEventChangeLocation08Visitor01 Auto
Quest Property BaboEventDibellaTemplePerk Auto
Quest Property BaboEventMarkarthGuard Auto
Scene Property BaboEventMarkarthGuardScene00a Auto
Scene Property BaboEventMarkarthGuardScene00b Auto
Scene Property BaboEventMarkarthGuardScene01 Auto
Scene Property BaboEventMarkarthGuardScene02 Auto
Quest Property BaboEventMogrul Auto
Quest Property BaboEventOrcVillage01 Auto
Scene Property BaboEventRieklingKneelBeforeScene Auto
Quest Property BaboEventRieklingThirsk Auto
Scene Property BaboEventRieklingThirskScene01 Auto
Scene Property BaboEventRieklingThirskScene02 Auto
Scene Property BaboEventRieklingThirskStartQuestScene Auto
Quest Property BaboEventWhiterunOrcVisitiors Auto
Quest Property BaboEventWindhelmNewgnisis Auto
Idle Property BaboExhaustedBack01 Auto
Idle Property BaboExhaustedBack02 Auto
Idle Property BaboExhaustedBack03 Auto
Idle Property BaboExhaustedFront01 Auto
Idle Property BaboExhaustedFront02 Auto
Idle Property BaboExhaustedFront03 Auto
GlobalVariable Property BaboFHU Auto
ImageSpaceModifier Property BaboFadeToBlack Auto
ImageSpaceModifier Property BaboFadeToBlackBackImod Auto
ImageSpaceModifier Property BaboFadeToBlackBackImodFast Auto
ImageSpaceModifier Property BaboFadeToBlackFast Auto
ImageSpaceModifier Property BaboFadeToBlackHoldImod Auto
Armor Property BaboGagLogBit01 Auto
GlobalVariable Property BaboGlobalSpectatorSwitch Auto
Faction Property BaboHadRapedPlayerFaction Auto
Faction Property BaboHadSexwithPlayerFaction Auto
Quest Property BaboHangingQuest Auto
Faction Property BaboHateFaction Auto
Faction Property BaboHateNPC01Faction Auto
Faction Property BaboHateNPC02Faction Auto
GlobalVariable Property BaboHorribleHarassment Auto
Quest Property BaboKidnapEvent Auto
Scene Property BaboKidnapEventDrunkPlayerScene03 Auto
Scene Property BaboKidnapEventDrunkPlayerScene04 Auto
Scene Property BaboKidnapEventScenario04AfterSex Auto
Scene Property BaboKidnapEventScenarioLastSex Auto
Scene Property BaboKidnapEventYouAreTrappedSnareRopeIMCAfterSex Auto
Keyword Property BaboKidnapKeyword Auto
Location Property BaboKidnapperLocation01 Auto
Location Property BaboKidnapperLocation02 Auto
Location Property BaboKidnapperLocation03 Auto
Location Property BaboKidnapperLocation04 Auto
Location Property BaboKidnapperLocationCave Auto
Location Property BaboKidnapperLocationCave02 Auto
Location Property BaboKidnapperLocationCave03 Auto
Location Property BaboKidnapperLocationTower01 Auto
Quest Property BaboLoanSharks Auto
Quest Property BaboMonitorScript Auto
Faction Property BaboNPCAnimating Auto
GlobalVariable Property BaboPlayerAppearanceTotalValue Auto
GlobalVariable Property BaboPlayerAppearanceValue Auto
GlobalVariable Property BaboPlayerBreastsValue Auto
GlobalVariable Property BaboPlayerButtocksValue Auto
Faction Property BaboPlayerFaction Auto
Faction Property BaboPlayerSurrenderFaction Auto
ObjectReference Property BaboPosNPCRef Auto
ObjectReference Property BaboPosPCRef Auto
Faction Property BaboPotentialSurrenderFaction Auto
Quest Property BaboPotionDealer Auto
GlobalVariable Property BaboPrecisionGlobal Auto
Sound Property BaboPunchMarker Auto
Message Property BaboQTEAtkMess Auto
Message Property BaboQTEStrafeMess Auto
GlobalVariable Property BaboRapeChanceGlobal Auto
Faction Property BaboRapistFaction Auto
GlobalVariable Property BaboReputation Auto
GlobalVariable Property BaboReputationBitch Auto
Quest Property BaboReputationScript Auto
Quest Property BaboRescuingSlavesScript Auto
Sound Property BaboRopeRustleSoundMarker Auto
ObjectReference Property BaboSexControllerXmarker Auto
GlobalVariable Property BaboSimpleSlavery Auto
Location Property BaboSlaverLocation01 Auto
Location Property BaboSlaverLocation02 Auto
Location Property BaboSlaverLocation03 Auto
Location Property BaboSlaverLocation04 Auto
Location Property BaboSlaverNobleHouseLocation01 Auto
Keyword Property BaboSpectatorKeyword Auto
Quest Property BaboSpectatorScript Auto
Keyword Property BaboSpectatorWOEnemyKeyword Auto
Quest Property BaboSpectatorWOEnemyScript Auto
FormList Property BaboStalkerList Auto
Quest Property BaboStealingScript Auto
Message Property BaboSurrenderFailmsg Auto
Message Property BaboSurrendermsg Auto
Armor Property BaboTearsMesh1Playable Auto
FormList Property BaboTempList Auto
ObjectReference Property BaboTempStolengoodsRef Auto
Faction Property BaboWEAggressiveRapistFaction Auto
Quest Property BaboWidgetController Auto
Quest Property BaboWidgetTextController Auto
Armor Property BaboWristRope01 Auto
GlobalVariable Property BaboYamete Auto
Armor Property BaboYokeWood01 Auto
Race Property BakaGiantOrcRace Auto
Faction Property BanditFaction Auto
Keyword Property ClothingBody Auto
Bool Property ControlBool Auto
Float Property DebtInterestRateDay Auto hidden
Int Property DebtLength Auto hidden
Float Property DebtValue Auto hidden
Package Property DoNothing Auto
Keyword Property EroticArmor Auto
ImageSpaceModifier Property FadeToBlackBackImod Auto
ImageSpaceModifier Property FadeToBlackHoldImod Auto
ImageSpaceModifier Property FadeToBlackImod Auto
GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property GameHour Auto
MiscObject Property Gold001 Auto
Actor Property PlayerRef Auto
Faction Property SLAX_AggressiveFaction Auto
Faction Property SLAX_RapistFaction Auto
Keyword Property SLA_ArmorCurtain Auto
Keyword Property SLA_ArmorHalfNaked Auto
Keyword Property SLA_ArmorHalfNakedBikini Auto
Keyword Property SLA_ArmorLewdLeotard Auto
Keyword Property SLA_ArmorPretty Auto
Keyword Property SLA_ArmorSpendex Auto
Keyword Property SLA_ArmorTransparent Auto
sos_api Property SOSAPIQuest Auto hidden
sos_addonquest_script Property SOS_Addon_VectorPlexusMuscular_Quest Auto hidden
sos_addonquest_script Property SOS_Addon_VectorPlexusRegular_Quest Auto hidden
sos_setupquest_script Property SOS_Quest Auto hidden
sexlabframework Property SexLab Auto
Quest Property SexLabQuestFramework Auto
Idle Property StaggerStart Auto
Actor Property StruggleActor Auto
Faction Property sla_Arousal Auto
Quest Property sla_Framework Auto
Form Property sla_NakedArmorList Auto

;-- Functions ---------------------------------------

Function BCLEvent08ScenePlay(Int i)
  ; Empty function
EndFunction

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

Function AddTraumaPerk(String TraumaString, Bool baddperk)
  If baddperk ; #DEBUG_LINE_NO:369
    If TraumaString == "Riekling" ; #DEBUG_LINE_NO:370
      PlayerRef.AddPerk(BaboDia_Trauma_VulnerabletoRieklingPerk) ; #DEBUG_LINE_NO:371
    EndIf
  ElseIf TraumaString == "Riekling" ; #DEBUG_LINE_NO:374
    PlayerRef.RemovePerk(BaboDia_Trauma_VulnerabletoRieklingPerk) ; #DEBUG_LINE_NO:375
  EndIf
EndFunction

Idle[] Function WolfKillMove()
  Idle[] TheKillMove = new Idle[3] ; #DEBUG_LINE_NO:385
  TheKillMove[0] = Game.GetFormFromFile(1001111, "Skyrim.esm") as Idle ; #DEBUG_LINE_NO:386
  TheKillMove[1] = Game.GetFormFromFile(1001079, "Skyrim.esm") as Idle ; #DEBUG_LINE_NO:387
  TheKillMove[2] = Game.GetFormFromFile(1001080, "Skyrim.esm") as Idle ; #DEBUG_LINE_NO:388
  Return TheKillMove ; #DEBUG_LINE_NO:389
EndFunction

Function AddHadSexFaction(Actor[] akactorArray, Bool brape = false)
  If akactorArray == None
    return
  EndIf
  Int i = akactorArray.Length ; #DEBUG_LINE_NO:393
  While i > 1 ; #DEBUG_LINE_NO:394
    i -= 1 ; #DEBUG_LINE_NO:395
    If akactorArray[i] == None
    ElseIf brape ; #DEBUG_LINE_NO:396
      If akactorArray[i].isinfaction(BaboHadRapedPlayerFaction) ; #DEBUG_LINE_NO:397
        akactorArray[i].setfactionrank(BaboHadRapedPlayerFaction, akactorArray[i].getfactionrank(BaboHadRapedPlayerFaction) + 1) ; #DEBUG_LINE_NO:398
      Else
        akactorArray[i].addtofaction(BaboHadRapedPlayerFaction) ; #DEBUG_LINE_NO:400
      EndIf
    ElseIf akactorArray[i].isinfaction(BaboHadSexwithPlayerFaction) ; #DEBUG_LINE_NO:403
      akactorArray[i].setfactionrank(BaboHadSexwithPlayerFaction, akactorArray[i].getfactionrank(BaboHadSexwithPlayerFaction) + 1) ; #DEBUG_LINE_NO:404
    Else
      akactorArray[i].addtofaction(BaboHadSexwithPlayerFaction) ; #DEBUG_LINE_NO:406
    EndIf
  EndWhile
EndFunction

Function Onint()
  Self.RegisterSexlabHooks() ; #DEBUG_LINE_NO:413
  Self.SOSSize() ; #DEBUG_LINE_NO:414
EndFunction

Function PrecisionCheck(Actor akactor, Bool switch)
  If BaboPrecisionGlobal.getvalue() == 1 as Float ; #DEBUG_LINE_NO:418
    precision_utility.ToggleDisableActor(akactor, switch) ; #DEBUG_LINE_NO:419
  EndIf
EndFunction

Function ExhaustionIdle(Actor akactor, String type = "")
  Int randomi
  If type == "Back" ; #DEBUG_LINE_NO:425
    randomi = Utility.randomint(0, 2) ; #DEBUG_LINE_NO:426
    If randomi == 1 ; #DEBUG_LINE_NO:427
      akactor.playidle(BaboExhaustedBack02) ; #DEBUG_LINE_NO:428
    ElseIf randomi == 2 ; #DEBUG_LINE_NO:429
      akactor.playidle(BaboExhaustedBack03) ; #DEBUG_LINE_NO:430
    Else
      akactor.playidle(BaboExhaustedBack01) ; #DEBUG_LINE_NO:432
    EndIf
  ElseIf type == "Front" ; #DEBUG_LINE_NO:434
    randomi = Utility.randomint(0, 2) ; #DEBUG_LINE_NO:435
    If randomi == 1 ; #DEBUG_LINE_NO:436
      akactor.playidle(BaboExhaustedFront02) ; #DEBUG_LINE_NO:437
    ElseIf randomi == 2 ; #DEBUG_LINE_NO:438
      akactor.playidle(BaboExhaustedFront03) ; #DEBUG_LINE_NO:439
    Else
      akactor.playidle(BaboExhaustedFront01) ; #DEBUG_LINE_NO:441
    EndIf
  Else
    Self.RandomExhaustionIdle(akactor) ; #DEBUG_LINE_NO:444
  EndIf
EndFunction

Function RandomExhaustionIdle(Actor akactor)
  Int randomi = Utility.randomint(0, 7) ; #DEBUG_LINE_NO:449
  If randomi == 1 ; #DEBUG_LINE_NO:450
    akactor.playidle(BaboExhaustedFront01) ; #DEBUG_LINE_NO:451
  ElseIf randomi == 2 ; #DEBUG_LINE_NO:452
    akactor.playidle(BaboExhaustedFront02) ; #DEBUG_LINE_NO:453
  ElseIf randomi == 3 ; #DEBUG_LINE_NO:454
    akactor.playidle(BaboExhaustedFront03) ; #DEBUG_LINE_NO:455
  ElseIf randomi == 4 ; #DEBUG_LINE_NO:456
    akactor.playidle(BaboExhaustedBack01) ; #DEBUG_LINE_NO:457
  ElseIf randomi == 5 ; #DEBUG_LINE_NO:458
    akactor.playidle(BaboExhaustedBack02) ; #DEBUG_LINE_NO:459
  ElseIf randomi == 6 ; #DEBUG_LINE_NO:460
    akactor.playidle(BaboExhaustedBack03) ; #DEBUG_LINE_NO:461
  ElseIf randomi == 7 ; #DEBUG_LINE_NO:462
    Debug.SendAnimationEvent(akactor as ObjectReference, "BaboFaintF") ; #DEBUG_LINE_NO:463
  Else
    Debug.SendAnimationEvent(akactor as ObjectReference, "BaboFaintFStart") ; #DEBUG_LINE_NO:465
  EndIf
EndFunction

Function BigguySLReady(Actor akactor, Bool Ready)
  If Ready ; #DEBUG_LINE_NO:470
    akactor.setfactionrank(BaboBigGuySLFaction, 1) ; #DEBUG_LINE_NO:471
  ElseIf akactor == PlayerRef ; #DEBUG_LINE_NO:473
    akactor.setfactionrank(BaboBigGuySLFaction, 0) ; #DEBUG_LINE_NO:474
  Else
    akactor.removefromfaction(BaboBigGuySLFaction) ; #DEBUG_LINE_NO:476
  EndIf
EndFunction

Function RegisterSexlabHooks()
  Self.RegisterForModEvent("HookStageStart", "BSCStart") ; #DEBUG_LINE_NO:482
  Self.RegisterForModEvent("HookAnimationEnd", "BSCEnd") ; #DEBUG_LINE_NO:483
EndFunction

Function UnregisterSexlabHooks()
  Self.UnregisterForModEvent("BSCStart") ; #DEBUG_LINE_NO:487
  Self.UnregisterForModEvent("BSCEnd") ; #DEBUG_LINE_NO:488
EndFunction

Function StopAllSexlabAnimations()
  (SexLabQuestFramework as sslthreadslots).stopall() ; #DEBUG_LINE_NO:492
EndFunction

Function SexCustomActor(Actor Actor01, Actor Actor02, Actor Actor03, Actor Actor04, Actor Actor05, String Tag01, String Tag02, String Tag03, Bool NextScene, String EventRegisterDummy, String EventName, Bool Rape)
  If Actor01 == None || Actor02 == None
    return
  EndIf
  Actor[] sexActors = Self.MakeActorArray(Actor01, Actor02, Actor03, Actor04, Actor05) ; #DEBUG_LINE_NO:497
  If sexActors == None
    return
  EndIf
  Int ActorCount = sexActors.Length ; #DEBUG_LINE_NO:498
  sslbaseanimation[] anims = SexLab.GetAnimationsByTag(ActorCount, Tag01, Tag02, Tag03, "Femdom", True) ; #DEBUG_LINE_NO:500
  If NextScene ; #DEBUG_LINE_NO:502
    Self.RegisterForModEvent("AnimationEnd_" + EventRegisterDummy, EventName) ; #DEBUG_LINE_NO:503
    If Rape ; #DEBUG_LINE_NO:504
      SexLab.StartSex(sexActors, anims, sexActors[0], None, True, EventRegisterDummy) ; #DEBUG_LINE_NO:505
    Else
      SexLab.StartSex(sexActors, anims, None, None, True, EventRegisterDummy) ; #DEBUG_LINE_NO:507
    EndIf
  ElseIf !NextScene ; #DEBUG_LINE_NO:509
    If Rape ; #DEBUG_LINE_NO:510
      SexLab.StartSex(sexActors, anims, sexActors[0], None, True, "") ; #DEBUG_LINE_NO:511
    Else
      SexLab.StartSex(sexActors, anims, None, None, True, "") ; #DEBUG_LINE_NO:513
    EndIf
  EndIf
  If sexActors[0] == PlayerRef ; #DEBUG_LINE_NO:516
    Self.AddHadSexFaction(sexActors, Rape) ; #DEBUG_LINE_NO:517
  EndIf
EndFunction

Function SexCustom(ReferenceAlias ActorRef01, ReferenceAlias ActorRef02, ReferenceAlias ActorRef03, ReferenceAlias ActorRef04, ReferenceAlias ActorRef05, String Tag01, String Tag02, String Tag03, Bool NextScene, String EventRegisterDummy, String EventName, Bool Rape)
  Actor Actor01 = ActorRef01.GetActorReference() ; #DEBUG_LINE_NO:523
  Actor Actor02 = ActorRef02.GetActorReference() ; #DEBUG_LINE_NO:524
  Actor Actor03 = ActorRef03.GetActorReference() ; #DEBUG_LINE_NO:525
  Actor Actor04 = ActorRef04.GetActorReference() ; #DEBUG_LINE_NO:526
  Actor Actor05 = ActorRef05.GetActorReference() ; #DEBUG_LINE_NO:527
  If Actor01 == None || Actor02 == None
    return
  EndIf
  Actor[] sexActors = Self.MakeActorArray(Actor01, Actor02, Actor03, Actor04, Actor05) ; #DEBUG_LINE_NO:528
  If sexActors == None
    return
  EndIf
  Int ActorCount = sexActors.Length ; #DEBUG_LINE_NO:529
  sslbaseanimation[] anims = SexLab.GetAnimationsByTag(ActorCount, Tag01, Tag02, Tag03, "Femdom", True) ; #DEBUG_LINE_NO:531
  If NextScene ; #DEBUG_LINE_NO:533
    Self.RegisterForModEvent("AnimationEnd_" + EventRegisterDummy, EventName) ; #DEBUG_LINE_NO:534
    If Rape ; #DEBUG_LINE_NO:535
      SexLab.StartSex(sexActors, anims, sexActors[0], None, True, EventRegisterDummy) ; #DEBUG_LINE_NO:536
    Else
      SexLab.StartSex(sexActors, anims, None, None, True, EventRegisterDummy) ; #DEBUG_LINE_NO:538
    EndIf
  ElseIf Rape
    SexLab.StartSex(sexActors, anims, sexActors[0], None, True, "") ; #DEBUG_LINE_NO:542
  Else
    SexLab.StartSex(sexActors, anims, None, None, True, "") ; #DEBUG_LINE_NO:544
  EndIf
  If sexActors[0] == PlayerRef ; #DEBUG_LINE_NO:547
    Self.AddHadSexFaction(sexActors, Rape) ; #DEBUG_LINE_NO:548
  EndIf
EndFunction

Function SexCustomActorTag(Actor Actor01, Actor Actor02, Actor Actor03, Actor Actor04, Actor Actor05, String Tag, String SuppressTag, Bool NextScene, String EventRegisterDummy, String EventName, Bool Rape)
  If Actor01 == None || Actor02 == None
    return
  EndIf
  Actor[] sexActors = Self.MakeActorArray(Actor01, Actor02, Actor03, Actor04, Actor05) ; #DEBUG_LINE_NO:554
  If sexActors == None
    return
  EndIf
  Int ActorCount = sexActors.Length ; #DEBUG_LINE_NO:555
  sslbaseanimation[] anims = SexLab.GetAnimationsByTags(ActorCount, Tag, SuppressTag, True) ; #DEBUG_LINE_NO:557
  If NextScene ; #DEBUG_LINE_NO:559
    Self.RegisterForModEvent("AnimationEnd_" + EventRegisterDummy, EventName) ; #DEBUG_LINE_NO:560
    If Rape ; #DEBUG_LINE_NO:561
      SexLab.StartSex(sexActors, anims, sexActors[0], None, True, EventRegisterDummy) ; #DEBUG_LINE_NO:562
    Else
      SexLab.StartSex(sexActors, anims, None, None, True, EventRegisterDummy) ; #DEBUG_LINE_NO:564
    EndIf
  ElseIf Rape
    SexLab.StartSex(sexActors, anims, sexActors[0], None, True, "") ; #DEBUG_LINE_NO:568
  Else
    SexLab.StartSex(sexActors, anims, None, None, True, "") ; #DEBUG_LINE_NO:570
  EndIf
  If sexActors[0] == PlayerRef ; #DEBUG_LINE_NO:573
    Self.AddHadSexFaction(sexActors, Rape) ; #DEBUG_LINE_NO:574
  EndIf
EndFunction

Function SexCustomTag(ReferenceAlias ActorRef01, ReferenceAlias ActorRef02, ReferenceAlias ActorRef03, ReferenceAlias ActorRef04, ReferenceAlias ActorRef05, String Tag, String SuppressTag, Bool NextScene, String EventRegisterDummy, String EventName, Bool Rape)
  Actor Actor01 = ActorRef01.GetActorReference() ; #DEBUG_LINE_NO:580
  Actor Actor02 = ActorRef02.GetActorReference() ; #DEBUG_LINE_NO:581
  Actor Actor03 = ActorRef03.GetActorReference() ; #DEBUG_LINE_NO:582
  Actor Actor04 = ActorRef04.GetActorReference() ; #DEBUG_LINE_NO:583
  Actor Actor05 = ActorRef05.GetActorReference() ; #DEBUG_LINE_NO:584
  Actor[] sexActors = Self.MakeActorArray(Actor01, Actor02, Actor03, Actor04, Actor05) ; #DEBUG_LINE_NO:585
  Int ActorCount = sexActors.Length ; #DEBUG_LINE_NO:586
  sslbaseanimation[] anims = SexLab.GetAnimationsByTags(ActorCount, Tag, SuppressTag, True) ; #DEBUG_LINE_NO:588
  If NextScene ; #DEBUG_LINE_NO:590
    Self.RegisterForModEvent("AnimationEnd_" + EventRegisterDummy, EventName) ; #DEBUG_LINE_NO:591
    If Rape ; #DEBUG_LINE_NO:592
      SexLab.StartSex(sexActors, anims, sexActors[0], None, True, EventRegisterDummy) ; #DEBUG_LINE_NO:593
    Else
      SexLab.StartSex(sexActors, anims, None, None, True, EventRegisterDummy) ; #DEBUG_LINE_NO:595
    EndIf
  ElseIf Rape
    SexLab.StartSex(sexActors, anims, sexActors[0], None, True, "") ; #DEBUG_LINE_NO:599
  Else
    SexLab.StartSex(sexActors, anims, None, None, True, "") ; #DEBUG_LINE_NO:601
  EndIf
  If sexActors[0] == PlayerRef ; #DEBUG_LINE_NO:604
    Self.AddHadSexFaction(sexActors, Rape) ; #DEBUG_LINE_NO:605
  EndIf
EndFunction

Function SexCustombyName(ReferenceAlias ActorRef01, ReferenceAlias ActorRef02, ReferenceAlias ActorRef03, ReferenceAlias ActorRef04, ReferenceAlias ActorRef05, String SLName, Bool NextScene, String EventRegisterDummy, String EventName, Bool Rape)
  Actor Actor01 = ActorRef01.GetActorReference() ; #DEBUG_LINE_NO:611
  Actor Actor02 = ActorRef02.GetActorReference() ; #DEBUG_LINE_NO:612
  Actor Actor03 = ActorRef03.GetActorReference() ; #DEBUG_LINE_NO:613
  Actor Actor04 = ActorRef04.GetActorReference() ; #DEBUG_LINE_NO:614
  Actor Actor05 = ActorRef05.GetActorReference() ; #DEBUG_LINE_NO:615
  Actor[] sexActors = Self.MakeActorArray(Actor01, Actor02, Actor03, Actor04, Actor05) ; #DEBUG_LINE_NO:616
  Int ActorCount = sexActors.Length ; #DEBUG_LINE_NO:617
  sslbaseanimation[] anims = new sslbaseanimation[1] ; #DEBUG_LINE_NO:619
  anims[0] = SexLab.GetAnimationByName(SLName) ; #DEBUG_LINE_NO:620
  If NextScene ; #DEBUG_LINE_NO:622
    Self.RegisterForModEvent("AnimationEnd_" + EventRegisterDummy, EventName) ; #DEBUG_LINE_NO:623
    If Rape ; #DEBUG_LINE_NO:624
      SexLab.StartSex(sexActors, anims, sexActors[0], None, True, EventRegisterDummy) ; #DEBUG_LINE_NO:625
    Else
      SexLab.StartSex(sexActors, anims, None, None, True, EventRegisterDummy) ; #DEBUG_LINE_NO:627
    EndIf
  ElseIf Rape
    SexLab.StartSex(sexActors, anims, sexActors[0], None, True, "") ; #DEBUG_LINE_NO:631
  Else
    SexLab.StartSex(sexActors, anims, None, None, True, "") ; #DEBUG_LINE_NO:633
  EndIf
  If sexActors[0] == PlayerRef ; #DEBUG_LINE_NO:636
    Self.AddHadSexFaction(sexActors, Rape) ; #DEBUG_LINE_NO:637
  EndIf
EndFunction

Actor[] Function MakeActorArray(Actor Actor1, Actor Actor2, Actor Actor3, Actor Actor4, Actor Actor5)
  Actor[] sexActors
  If Actor5 ; #DEBUG_LINE_NO:643
    sexActors = new Actor[5] ; #DEBUG_LINE_NO:644
    sexActors[0] = Actor1 ; #DEBUG_LINE_NO:645
    sexActors[1] = Actor2 ; #DEBUG_LINE_NO:646
    sexActors[2] = Actor3 ; #DEBUG_LINE_NO:647
    sexActors[3] = Actor4 ; #DEBUG_LINE_NO:648
    sexActors[4] = Actor5 ; #DEBUG_LINE_NO:649
  ElseIf Actor4
    sexActors = new Actor[4] ; #DEBUG_LINE_NO:651
    sexActors[0] = Actor1 ; #DEBUG_LINE_NO:652
    sexActors[1] = Actor2 ; #DEBUG_LINE_NO:653
    sexActors[2] = Actor3 ; #DEBUG_LINE_NO:654
    sexActors[3] = Actor4 ; #DEBUG_LINE_NO:655
  ElseIf Actor3
    sexActors = new Actor[3] ; #DEBUG_LINE_NO:657
    sexActors[0] = Actor1 ; #DEBUG_LINE_NO:658
    sexActors[1] = Actor2 ; #DEBUG_LINE_NO:659
    sexActors[2] = Actor3 ; #DEBUG_LINE_NO:660
  Else
    sexActors = new Actor[2] ; #DEBUG_LINE_NO:662
    sexActors[0] = Actor1 ; #DEBUG_LINE_NO:663
    sexActors[1] = Actor2 ; #DEBUG_LINE_NO:664
  EndIf
  Return sexActors ; #DEBUG_LINE_NO:666
EndFunction

Int Function GetAliasArray(ReferenceAlias ActorRef01, ReferenceAlias ActorRef02, ReferenceAlias ActorRef03, ReferenceAlias ActorRef04, ReferenceAlias ActorRef05)
  BaboTempList.revert() ; #DEBUG_LINE_NO:670
  Actor[] ActorArray = new Actor[5] ; #DEBUG_LINE_NO:672
  If ActorRef01 ; #DEBUG_LINE_NO:673
    ActorArray[0] = ActorRef01.GetReference() as Actor ; #DEBUG_LINE_NO:674
  EndIf
  If ActorRef02 ; #DEBUG_LINE_NO:677
    ActorArray[1] = ActorRef02.GetReference() as Actor ; #DEBUG_LINE_NO:678
  EndIf
  If ActorRef03 ; #DEBUG_LINE_NO:681
    ActorArray[2] = ActorRef03.GetReference() as Actor ; #DEBUG_LINE_NO:682
  EndIf
  If ActorRef04 ; #DEBUG_LINE_NO:685
    ActorArray[3] = ActorRef04.GetReference() as Actor ; #DEBUG_LINE_NO:686
  EndIf
  If ActorRef05 ; #DEBUG_LINE_NO:689
    ActorArray[4] = ActorRef05.GetReference() as Actor ; #DEBUG_LINE_NO:690
  EndIf
  Int i = 5 ; #DEBUG_LINE_NO:694
  While i > 0 ; #DEBUG_LINE_NO:695
    i -= 1 ; #DEBUG_LINE_NO:696
    If ActorArray[i] as Bool && !ActorArray[i].isdead() ; #DEBUG_LINE_NO:697
      BaboTempList.addform(ActorArray[i] as Form) ; #DEBUG_LINE_NO:698
    EndIf
  EndWhile
  Int tl = BaboTempList.getsize() ; #DEBUG_LINE_NO:701
  Return tl ; #DEBUG_LINE_NO:702
EndFunction

Function EquipRestraints(Actor akactor, Bool gag)
  akactor.Additem(BaboWristRope01 as Form, 1, True) ; #DEBUG_LINE_NO:706
  akactor.Additem(BaboAnkleRope01 as Form, 1, True) ; #DEBUG_LINE_NO:707
  akactor.Additem(BaboCollarLeatherBinds as Form, 1, True) ; #DEBUG_LINE_NO:708
  akactor.EquipItem(BaboWristRope01 as Form, True, True) ; #DEBUG_LINE_NO:709
  akactor.EquipItem(BaboAnkleRope01 as Form, True, True) ; #DEBUG_LINE_NO:710
  akactor.EquipItem(BaboCollarLeatherBinds as Form, True, True) ; #DEBUG_LINE_NO:711
  If gag ; #DEBUG_LINE_NO:712
    akactor.Additem(BaboGagLogBit01 as Form, 1, True) ; #DEBUG_LINE_NO:713
    akactor.EquipItem(BaboGagLogBit01 as Form, True, True) ; #DEBUG_LINE_NO:714
  EndIf
EndFunction

Function EquipGag(Actor akactor, Bool gag)
  If gag ; #DEBUG_LINE_NO:719
    akactor.Additem(BaboGagLogBit01 as Form, 1, True) ; #DEBUG_LINE_NO:720
    akactor.EquipItem(BaboGagLogBit01 as Form, True, True) ; #DEBUG_LINE_NO:721
  Else
    akactor.UnequipItem(BaboGagLogBit01 as Form, True, True) ; #DEBUG_LINE_NO:723
  EndIf
EndFunction

Function EquipRestraintsYoke(Actor akactor, Bool gag)
  akactor.Additem(BaboYokeWood01 as Form, 1, True) ; #DEBUG_LINE_NO:728
  akactor.Additem(BaboAnkleIronBlack as Form, 1, True) ; #DEBUG_LINE_NO:729
  akactor.EquipItem(BaboYokeWood01 as Form, True, True) ; #DEBUG_LINE_NO:730
  akactor.EquipItem(BaboAnkleIronBlack as Form, True, True) ; #DEBUG_LINE_NO:731
  If gag ; #DEBUG_LINE_NO:732
    akactor.Additem(BaboGagLogBit01 as Form, 1, True) ; #DEBUG_LINE_NO:733
    akactor.EquipItem(BaboGagLogBit01 as Form, True, True) ; #DEBUG_LINE_NO:734
  EndIf
EndFunction

Function UnEquipRestraints(Actor akactor)
  akactor.UnequipItem(BaboYokeWood01 as Form, True, True) ; #DEBUG_LINE_NO:739
  akactor.UnequipItem(BaboWristRope01 as Form, True, True) ; #DEBUG_LINE_NO:740
  akactor.UnequipItem(BaboAnkleRope01 as Form, True, True) ; #DEBUG_LINE_NO:741
  akactor.UnequipItem(BaboGagLogBit01 as Form, True, True) ; #DEBUG_LINE_NO:742
  akactor.UnequipItem(BaboCollarLeatherBinds as Form, True, True) ; #DEBUG_LINE_NO:743
  akactor.UnequipItem(BaboAnkleIronBlack as Form, True, True) ; #DEBUG_LINE_NO:744
EndFunction

Function EquipCumItem(Actor akactor)
  akactor.Additem(BaboCumLowerBod1Playable as Form, 1, False) ; #DEBUG_LINE_NO:749
  akactor.Additem(BaboCumMesh1Playable as Form, 1, False) ; #DEBUG_LINE_NO:750
  akactor.Additem(BaboCumUpperBodyPlayable as Form, 1, False) ; #DEBUG_LINE_NO:751
  akactor.Additem(BaboCumUpperBodyPlayable as Form, 1, False) ; #DEBUG_LINE_NO:752
  akactor.Additem(BaboTearsMesh1Playable as Form, 1, False) ; #DEBUG_LINE_NO:753
  akactor.EquipItem(BaboCumLowerBod1Playable as Form, True, True) ; #DEBUG_LINE_NO:754
  akactor.EquipItem(BaboCumMesh1Playable as Form, True, True) ; #DEBUG_LINE_NO:755
  akactor.EquipItem(BaboCumUpperBodyPlayable as Form, True, True) ; #DEBUG_LINE_NO:756
  akactor.EquipItem(BaboCumUpperBodyPlayable as Form, True, True) ; #DEBUG_LINE_NO:757
  akactor.EquipItem(BaboTearsMesh1Playable as Form, True, True) ; #DEBUG_LINE_NO:758
EndFunction

Function UnEquipCumItem(Actor akactor)
  akactor.UnequipItem(BaboCumLowerBod1Playable as Form, True, True) ; #DEBUG_LINE_NO:762
  akactor.UnequipItem(BaboCumMesh1Playable as Form, True, True) ; #DEBUG_LINE_NO:763
  akactor.UnequipItem(BaboCumUpperBodyPlayable as Form, True, True) ; #DEBUG_LINE_NO:764
  akactor.UnequipItem(BaboCumUpperBodyPlayable as Form, True, True) ; #DEBUG_LINE_NO:765
  akactor.UnequipItem(BaboTearsMesh1Playable as Form, True, True) ; #DEBUG_LINE_NO:766
  akactor.RemoveItem(BaboCumLowerBod1Playable as Form, 1, False, None) ; #DEBUG_LINE_NO:767
  akactor.RemoveItem(BaboCumMesh1Playable as Form, 1, False, None) ; #DEBUG_LINE_NO:768
  akactor.RemoveItem(BaboCumUpperBodyPlayable as Form, 1, False, None) ; #DEBUG_LINE_NO:769
  akactor.RemoveItem(BaboCumUpperBodyPlayable as Form, 1, False, None) ; #DEBUG_LINE_NO:770
  akactor.RemoveItem(BaboTearsMesh1Playable as Form, 1, False, None) ; #DEBUG_LINE_NO:771
EndFunction

Function TrapSetCoordinates(Actor akactor, ObjectReference akTrap)
  Self.ClearActorState(akactor) ; #DEBUG_LINE_NO:776
  Self.Restrained(akactor, True) ; #DEBUG_LINE_NO:777
  BaboPosPCRef.moveto(akTrap, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:778
  akactor.SetAngle(BaboPosPCRef.GetAngleX(), BaboPosPCRef.GetAngleY(), BaboPosPCRef.GetAngleZ()) ; #DEBUG_LINE_NO:779
  akactor.SplineTranslateToRef(BaboPosPCRef, 1.299999952, 150.0, 0.0) ; #DEBUG_LINE_NO:780
  akactor.SetVehicle(BaboPosPCRef) ; #DEBUG_LINE_NO:781
EndFunction

Function TrapResetCoordinates(Actor akactor, Bool bStaggerMotion = false)
  If akactor == PlayerRef ; #DEBUG_LINE_NO:785
    Game.SetPlayerAIDriven(False) ; #DEBUG_LINE_NO:786
    akactor.SetHeadTracking(True) ; #DEBUG_LINE_NO:787
    akactor.SetVehicle(None) ; #DEBUG_LINE_NO:788
    If bStaggerMotion ; #DEBUG_LINE_NO:789
      akactor.playidle(StaggerStart) ; #DEBUG_LINE_NO:790
    EndIf
  Else
    akactor.SetRestrained(False) ; #DEBUG_LINE_NO:793
    akactor.SetDontMove(False) ; #DEBUG_LINE_NO:794
    actorutil.RemovePackageOverride(akactor, BaboDoNothing) ; #DEBUG_LINE_NO:795
    If bStaggerMotion ; #DEBUG_LINE_NO:796
      akactor.playidle(StaggerStart) ; #DEBUG_LINE_NO:797
    EndIf
  EndIf
EndFunction

Function ClearActorState(Actor akactor)
  akactor.StopCombat() ; #DEBUG_LINE_NO:803
  akactor.SheatheWeapon() ; #DEBUG_LINE_NO:804
  If akactor.IsSneaking() ; #DEBUG_LINE_NO:805
    akactor.StartSneaking() ; #DEBUG_LINE_NO:806
  EndIf
  akactor.ClearKeepOffsetFromActor() ; #DEBUG_LINE_NO:808
EndFunction

Function Restrained(Actor akactor, Bool abRestrain)
  If abRestrain ; #DEBUG_LINE_NO:812
    If akactor == PlayerRef ; #DEBUG_LINE_NO:813
      Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:814
      akactor.SetHeadTracking(False) ; #DEBUG_LINE_NO:815
    Else
      actorutil.AddPackageOverride(akactor, BaboDoNothing, 100, 1) ; #DEBUG_LINE_NO:817
      akactor.EvaluatePackage() ; #DEBUG_LINE_NO:818
      akactor.SetRestrained(True) ; #DEBUG_LINE_NO:819
      akactor.SetDontMove(True) ; #DEBUG_LINE_NO:820
    EndIf
  ElseIf akactor == PlayerRef ; #DEBUG_LINE_NO:823
    Game.SetPlayerAIDriven(False) ; #DEBUG_LINE_NO:824
    akactor.SetHeadTracking(True) ; #DEBUG_LINE_NO:825
    akactor.SetVehicle(None) ; #DEBUG_LINE_NO:826
  Else
    akactor.SetRestrained(False) ; #DEBUG_LINE_NO:829
    akactor.SetDontMove(False) ; #DEBUG_LINE_NO:830
    actorutil.RemovePackageOverride(akactor, BaboDoNothing) ; #DEBUG_LINE_NO:831
  EndIf
EndFunction

Function LosingControl()
  Self.PrecisionCheck(PlayerRef, True) ; #DEBUG_LINE_NO:838
  Game.DisablePlayerControls(True, True, True, False, True, True, False, False, 0) ; #DEBUG_LINE_NO:839
  Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:840
  Game.ForceThirdPerson() ; #DEBUG_LINE_NO:844
  ControlBool = False ; #DEBUG_LINE_NO:845
EndFunction

Function StuckControl()
  Self.PrecisionCheck(PlayerRef, True) ; #DEBUG_LINE_NO:849
  Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:850
  Game.ForceThirdPerson() ; #DEBUG_LINE_NO:851
  actorutil.AddPackageOverride(PlayerRef, BaboDoNothing, 100, 1) ; #DEBUG_LINE_NO:853
  ControlBool = False ; #DEBUG_LINE_NO:855
EndFunction

Bool Function RecoverControl(Bool ResetIdle = true)
  If ControlBool == False ; #DEBUG_LINE_NO:859
    Self.PrecisionCheck(PlayerRef, False) ; #DEBUG_LINE_NO:860
    Game.EnablePlayerControls(True, True, True, True, True, True, True, True, 0) ; #DEBUG_LINE_NO:861
    Game.SetPlayerAIDriven(False) ; #DEBUG_LINE_NO:862
    PlayerRef.SetRestrained(False) ; #DEBUG_LINE_NO:863
    PlayerRef.SetDontMove(False) ; #DEBUG_LINE_NO:864
    actorutil.RemovePackageOverride(PlayerRef, BaboDoNothing) ; #DEBUG_LINE_NO:865
    Game.ForceThirdPerson() ; #DEBUG_LINE_NO:866
    If ResetIdle ; #DEBUG_LINE_NO:867
      Debug.SendAnimationEvent(PlayerRef as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:868
    EndIf
    ControlBool = True ; #DEBUG_LINE_NO:870
    Return True ; #DEBUG_LINE_NO:871
  Else
    Return False ; #DEBUG_LINE_NO:873
  EndIf
EndFunction

Function CompatiblityCheck(Bool Botton)
  If Botton == True ; #DEBUG_LINE_NO:878
    BDMCM.DisableSLHH(True) ; #DEBUG_LINE_NO:879
  Else
    BDMCM.DisableSLHH(False) ; #DEBUG_LINE_NO:881
  EndIf
EndFunction

Function NPCTurntoBandit(ReferenceAlias Alias01)
  Actor ActorRef01 = Alias01.GetActorReference() ; #DEBUG_LINE_NO:886
  ActorRef01.addtofaction(BanditFaction) ; #DEBUG_LINE_NO:887
  ActorRef01.startCombat(PlayerRef) ; #DEBUG_LINE_NO:888
EndFunction

Function NPCChallengeStart(ReferenceAlias Alias01, ReferenceAlias Alias02)
  Actor ActorRef01 = Alias01.GetActorReference() ; #DEBUG_LINE_NO:892
  Actor ActorRef02 = Alias02.GetActorReference() ; #DEBUG_LINE_NO:893
  ActorRef01.RemoveSpell(BaboCalmSpell) ; #DEBUG_LINE_NO:894
  ActorRef01.addtofaction(BaboHateNPC01Faction) ; #DEBUG_LINE_NO:895
  If ActorRef01.GetActorValue("Confidence") < 4 as Float ; #DEBUG_LINE_NO:896
    ActorRef01.SetActorValue("Confidence", 4 as Float) ; #DEBUG_LINE_NO:897
  EndIf
  ActorRef01.startCombat(ActorRef02) ; #DEBUG_LINE_NO:899
  If !ActorRef02.isinfaction(BaboHateNPC02Faction) ; #DEBUG_LINE_NO:900
    ActorRef02.RemoveSpell(BaboCalmSpell) ; #DEBUG_LINE_NO:901
    ActorRef02.addtofaction(BaboHateNPC02Faction) ; #DEBUG_LINE_NO:902
    If ActorRef02.GetActorValue("Confidence") < 4 as Float ; #DEBUG_LINE_NO:903
      ActorRef02.SetActorValue("Confidence", 4 as Float) ; #DEBUG_LINE_NO:904
    EndIf
    ActorRef02.startCombat(ActorRef01) ; #DEBUG_LINE_NO:906
  EndIf
EndFunction

Function NPCpacifyAlias(ReferenceAlias Alias01, ReferenceAlias Alias02)
  Actor ActorRef01 = Alias01.GetActorReference() ; #DEBUG_LINE_NO:911
  ActorRef01.removefromfaction(BaboHateNPC01Faction) ; #DEBUG_LINE_NO:912
  ActorRef01.AddSpell(BaboCalmSpell, True) ; #DEBUG_LINE_NO:913
  ActorRef01.SetActorValue("Confidence", 2 as Float) ; #DEBUG_LINE_NO:914
  ActorRef01.StopCombat() ; #DEBUG_LINE_NO:915
  If Alias02.GetReference() ; #DEBUG_LINE_NO:917
    If !(Alias02.GetReference() as Actor).isdead() ; #DEBUG_LINE_NO:918
      Actor ActorRef02 = Alias02.GetReference() as Actor ; #DEBUG_LINE_NO:919
      ActorRef02.removefromfaction(BaboHateNPC02Faction) ; #DEBUG_LINE_NO:920
      ActorRef02.AddSpell(BaboCalmSpell, True) ; #DEBUG_LINE_NO:921
      ActorRef02.SetActorValue("Confidence", 2 as Float) ; #DEBUG_LINE_NO:922
      ActorRef02.StopCombat() ; #DEBUG_LINE_NO:923
    EndIf
  EndIf
EndFunction

Function ActorChallengeStart(Actor ActorRef)
  ActorRef.RemoveSpell(BaboCalmSpell) ; #DEBUG_LINE_NO:929
  ActorRef.addtofaction(BaboHateFaction) ; #DEBUG_LINE_NO:930
  ActorRef.addtofaction(BaboPotentialSurrenderFaction) ; #DEBUG_LINE_NO:931
  PlayerRef.addtofaction(BaboPlayerFaction) ; #DEBUG_LINE_NO:932
  If ActorRef.GetActorValue("Confidence") < 4 as Float ; #DEBUG_LINE_NO:933
    ActorRef.SetActorValue("Confidence", 4 as Float) ; #DEBUG_LINE_NO:934
  EndIf
  ActorRef.startCombat(PlayerRef) ; #DEBUG_LINE_NO:936
EndFunction

Function ActorCombatStart(Actor ActorRef)
  ActorRef.RemoveSpell(BaboCalmSpell) ; #DEBUG_LINE_NO:940
  ActorRef.addtofaction(BaboHateFaction) ; #DEBUG_LINE_NO:941
  PlayerRef.addtofaction(BaboPlayerFaction) ; #DEBUG_LINE_NO:942
  If ActorRef.GetActorValue("Confidence") < 4 as Float ; #DEBUG_LINE_NO:943
    ActorRef.SetActorValue("Confidence", 4 as Float) ; #DEBUG_LINE_NO:944
  EndIf
  ActorRef.startCombat(PlayerRef) ; #DEBUG_LINE_NO:946
EndFunction

Function ChallengeStart(ReferenceAlias AliasToAnger)
  Actor ActorRef = AliasToAnger.GetActorReference() ; #DEBUG_LINE_NO:950
  ActorRef.RemoveSpell(BaboCalmSpell) ; #DEBUG_LINE_NO:951
  ActorRef.addtofaction(BaboHateFaction) ; #DEBUG_LINE_NO:952
  ActorRef.addtofaction(BaboPotentialSurrenderFaction) ; #DEBUG_LINE_NO:953
  PlayerRef.addtofaction(BaboPlayerFaction) ; #DEBUG_LINE_NO:954
  If ActorRef.GetActorValue("Confidence") < 4 as Float ; #DEBUG_LINE_NO:955
    ActorRef.SetActorValue("Confidence", 4 as Float) ; #DEBUG_LINE_NO:956
  EndIf
  ActorRef.startCombat(PlayerRef) ; #DEBUG_LINE_NO:958
EndFunction

Function pacifyAlias(ReferenceAlias AliasToPacify)
  Actor ActorRef = AliasToPacify.GetActorReference() ; #DEBUG_LINE_NO:962
  ActorRef.removefromfaction(BaboHateFaction) ; #DEBUG_LINE_NO:963
  ActorRef.removefromfaction(BaboPotentialSurrenderFaction) ; #DEBUG_LINE_NO:964
  PlayerRef.removefromfaction(BaboPlayerFaction) ; #DEBUG_LINE_NO:965
  ActorRef.AddSpell(BaboCalmSpell, True) ; #DEBUG_LINE_NO:966
  ActorRef.SetActorValue("Confidence", 2 as Float) ; #DEBUG_LINE_NO:967
  ActorRef.StopCombat() ; #DEBUG_LINE_NO:968
EndFunction

Function ReadySurrender(Bool switch)
  (BaboMonitorScript as babodiamonitorscript).bSurrenderKey = switch ; #DEBUG_LINE_NO:975
EndFunction

Function Surrender(Actor akactor)
  If akactor.isinfaction(BaboPotentialSurrenderFaction) ; #DEBUG_LINE_NO:980
    Int ichoice = BaboSurrendermsg.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) ; #DEBUG_LINE_NO:981
    If ichoice == 0 ; #DEBUG_LINE_NO:982
      Self.CheckDuelQuests("On_BaboDiaSurrender") ; #DEBUG_LINE_NO:983
    EndIf
  Else
    BaboSurrenderFailmsg.show(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0) ; #DEBUG_LINE_NO:986
  EndIf
EndFunction

Bool Function CheckDuelQuests(String eventstring)
  Int handle = modevent.Create(eventstring) ; #DEBUG_LINE_NO:994
  modevent.Send(handle) ; #DEBUG_LINE_NO:995
EndFunction

Function RetrieveConfiscatedBelongings()
  BaboTempStolengoodsRef.removeallitems(PlayerRef as ObjectReference, False, True) ; #DEBUG_LINE_NO:1002
  BaboConfiscatedChestSolitudeRef.removeallitems(PlayerRef as ObjectReference, False, True) ; #DEBUG_LINE_NO:1003
EndFunction

Function DisableEssential()
  BDMCM.Disableinvincibility() ; #DEBUG_LINE_NO:1007
EndFunction

Function EnableEssential()
  BDMCM.EnableInvincibility() ; #DEBUG_LINE_NO:1011
EndFunction

Function AwayFromtheScene()
  ControlBool = False ; #DEBUG_LINE_NO:1015
  Self.RecoverControl(False) ; #DEBUG_LINE_NO:1016
  Game.ForceFirstPerson() ; #DEBUG_LINE_NO:1017
  Game.DisablePlayerControls(True, True, True, False, True, False, True, False, 0) ; #DEBUG_LINE_NO:1018
  Game.SetInChargen(False, True, False) ; #DEBUG_LINE_NO:1020
EndFunction

Function FadeinScene(Bool SlowScene)
  If SlowScene ; #DEBUG_LINE_NO:1024
    BaboFadeToBlack.ApplyCrossFade(4.0) ; #DEBUG_LINE_NO:1025
    Utility.Wait(4.0) ; #DEBUG_LINE_NO:1026
    BaboFadeToBlack.PopTo(BaboFadeToBlackHoldImod, 1.0) ; #DEBUG_LINE_NO:1028
  Else
    BaboFadeToBlack.Apply(1.0) ; #DEBUG_LINE_NO:1037
    Utility.Wait(0.5) ; #DEBUG_LINE_NO:1038
    BaboFadeToBlack.PopTo(BaboFadeToBlackHoldImod, 1.0) ; #DEBUG_LINE_NO:1039
  EndIf
EndFunction

Function FadeOutScene(Bool SlowScene)
  If SlowScene ; #DEBUG_LINE_NO:1044
    BaboFadeToBlackBackImod.ApplyCrossFade(0.5) ; #DEBUG_LINE_NO:1045
    BaboFadeToBlackBackImod.Apply(1.0) ; #DEBUG_LINE_NO:1046
    BaboFadeToBlackHoldImod.ApplyCrossFade(2.0) ; #DEBUG_LINE_NO:1047
    Utility.Wait(3.0) ; #DEBUG_LINE_NO:1048
    BaboFadeToBlackHoldImod.remove() ; #DEBUG_LINE_NO:1049
    ImageSpaceModifier.RemoveCrossFade(0.01) ; #DEBUG_LINE_NO:1050
  Else
    BaboFadeToBlackHoldImod.PopTo(BaboFadeToBlackBackImodFast, 1.0) ; #DEBUG_LINE_NO:1059
    BaboFadeToBlackBackImodFast.ApplyCrossFade(2.0) ; #DEBUG_LINE_NO:1060
    Utility.Wait(2.0) ; #DEBUG_LINE_NO:1061
    BaboFadeToBlackBackImodFast.remove() ; #DEBUG_LINE_NO:1062
  EndIf
EndFunction

Function FadeinMove(ReferenceAlias akactorRef, ReferenceAlias MovePoint, Int Callstage, Int Stage)
  Actor akactor = akactorRef.GetReference() as Actor ; #DEBUG_LINE_NO:1067
  ObjectReference MP = MovePoint.getref() ; #DEBUG_LINE_NO:1068
  FadeToBlackImod.ApplyCrossFade(1.0) ; #DEBUG_LINE_NO:1070
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:1071
  FadeToBlackHoldImod.Apply(1.0) ; #DEBUG_LINE_NO:1072
  FadeToBlackImod.ApplyCrossFade(0.01) ; #DEBUG_LINE_NO:1073
  ImageSpaceModifier.RemoveCrossFade(0.01) ; #DEBUG_LINE_NO:1074
  akactor.moveto(MP, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:1076
  Utility.Wait(5.0) ; #DEBUG_LINE_NO:1077
  If Stage == 1 ; #DEBUG_LINE_NO:1079
    BaboDialogueWhiterun.setstage(Callstage) ; #DEBUG_LINE_NO:1080
  ElseIf Stage == 2 ; #DEBUG_LINE_NO:1081
    BaboEventMarkarthGuard.setstage(Callstage) ; #DEBUG_LINE_NO:1082
  ElseIf Stage == 3 ; #DEBUG_LINE_NO:1083
    BaboChangeLocationEvent01.setstage(Callstage) ; #DEBUG_LINE_NO:1084
  EndIf
  FadeToBlackBackImod.ApplyCrossFade(0.01) ; #DEBUG_LINE_NO:1087
  FadeToBlackBackImod.Apply(1.0) ; #DEBUG_LINE_NO:1088
  FadeToBlackHoldImod.ApplyCrossFade(1.0) ; #DEBUG_LINE_NO:1089
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:1090
  FadeToBlackHoldImod.remove() ; #DEBUG_LINE_NO:1091
  ImageSpaceModifier.RemoveCrossFade(0.01) ; #DEBUG_LINE_NO:1092
EndFunction

Function SLHHFilterClearActor(Form pTarget)
  Int handle = modevent.Create("ON_SLHH_RemoveFromFilterEvent") ; #DEBUG_LINE_NO:1096
  modevent.PushForm(handle, pTarget) ; #DEBUG_LINE_NO:1097
  modevent.Send(handle) ; #DEBUG_LINE_NO:1098
EndFunction

Function SLHHFilterActor(Form pTarget)
  Int handle = modevent.Create("ON_SLHH_AddtoFilterEvent") ; #DEBUG_LINE_NO:1101
  modevent.PushForm(handle, pTarget) ; #DEBUG_LINE_NO:1102
  modevent.Send(handle) ; #DEBUG_LINE_NO:1103
EndFunction

Function SLHHActivateOption(Actor pTarget, Actor pTargetFriend, Int NoSex)
  Keyword SLHHScriptEventKeyword = Game.GetFormFromFile(50448, "SexLabHorribleHarassment.esp") as Keyword ; #DEBUG_LINE_NO:1107
  SLHHScriptEventKeyword.SendStoryEvent(None, pTarget as ObjectReference, pTargetFriend as ObjectReference, NoSex, 0) ; #DEBUG_LINE_NO:1108
EndFunction

Function SLHHSendOnEndEvent(String akstring01, String akstring02)
  Int handle = modevent.Create("SLHH_AddOnEndEvent") ; #DEBUG_LINE_NO:1112
  If handle ; #DEBUG_LINE_NO:1113
    modevent.PushString(handle, "akstring01") ; #DEBUG_LINE_NO:1114
    modevent.PushString(handle, "akstring02") ; #DEBUG_LINE_NO:1115
    modevent.Send(handle) ; #DEBUG_LINE_NO:1116
  EndIf
EndFunction

Function SLHHActivate(Actor pTarget, Actor pTargetFriend = None)
  If BaboHorribleHarassment.getvalue() == 1 as Float ; #DEBUG_LINE_NO:1121
    Keyword SLHHScriptEventKeyword = Game.GetFormFromFile(50448, "SexLabHorribleHarassment.esp") as Keyword ; #DEBUG_LINE_NO:1122
    SLHHScriptEventKeyword.SendStoryEvent(None, pTarget as ObjectReference, pTargetFriend as ObjectReference, 0, 0) ; #DEBUG_LINE_NO:1123
  EndIf
EndFunction

Function SLHHChokeActivate(Actor pTarget)
  BDMScript.SLHHBCActivate(pTarget, None, 1) ; #DEBUG_LINE_NO:1128
EndFunction

Function SLHHChokeSexActivate(Actor pTarget)
  BDMScript.SLHHBCActivate(pTarget, None, 0) ; #DEBUG_LINE_NO:1132
EndFunction

Function FHUInflationEvent(Form inflater, Form injector, Bool Inflation, Int poolmask, Float amount, Float fhutime, String callback)
  If BaboFHU.getvalue() == 1 as Float ; #DEBUG_LINE_NO:1136
    If injector ; #DEBUG_LINE_NO:1137
      BDMScript.SendFHUInflationEvent(inflater, injector, Inflation, poolmask, amount, fhutime as Int, callback) ; #DEBUG_LINE_NO:1138
    Else
      BDMScript.SendFHUInflationEventNoActor(inflater, Inflation, poolmask, amount, fhutime as Int, callback) ; #DEBUG_LINE_NO:1140
    EndIf
  EndIf
EndFunction

Function CustomLoanSharkLoanReady(Float fValue, Float InterestRateDay, Int iLength)
  DebtValue = fValue ; #DEBUG_LINE_NO:1150
  DebtInterestRateDay = InterestRateDay ; #DEBUG_LINE_NO:1151
  DebtLength = iLength ; #DEBUG_LINE_NO:1152
EndFunction

Function CustomLoanSharkLoan()
  If DebtValue != 0 as Float ; #DEBUG_LINE_NO:1156
    (BaboLoanSharks as baboloansharkscript).LSCustomLoan(DebtValue, DebtInterestRateDay, DebtLength) ; #DEBUG_LINE_NO:1157
  EndIf
EndFunction

Function StealArmorStart(Bool bregister, Form akRef)
  If bregister ; #DEBUG_LINE_NO:1162
    (BaboStealingScript as babostealingarmorscript).RegisterPO3HitEvent(akRef) ; #DEBUG_LINE_NO:1163
  Else
    (BaboStealingScript as babostealingarmorscript).UnRegisterPO3HitEvent(akRef) ; #DEBUG_LINE_NO:1165
  EndIf
EndFunction

Function SpectatorWOEnemyActivate(Actor pTarget, Actor pTargetFriend = None)
  If BaboGlobalSpectatorSwitch.getvalue() == 1 as Float ; #DEBUG_LINE_NO:1172
    BaboSpectatorWOEnemyKeyword.SendStoryEvent(None, pTarget as ObjectReference, pTargetFriend as ObjectReference, 0, 0) ; #DEBUG_LINE_NO:1173
  EndIf
EndFunction

Function SpectatorActivate(Actor pTarget, Actor pTargetFriend = None)
  If BaboGlobalSpectatorSwitch.getvalue() == 1 as Float ; #DEBUG_LINE_NO:1178
    BaboSpectatorKeyword.SendStoryEvent(None, pTarget as ObjectReference, pTargetFriend as ObjectReference, 0, 0) ; #DEBUG_LINE_NO:1179
  EndIf
EndFunction

Bool Function KidnapQuestStart(Actor pTarget, Actor pTargetFriend = None, Int LocationNum = 0, Location KidnapLocation)
  If LocationNum == 4 ; #DEBUG_LINE_NO:1186
    KidnapLocation = BaboKidnapperLocation01 ; #DEBUG_LINE_NO:1187
  ElseIf LocationNum == 5 ; #DEBUG_LINE_NO:1188
    KidnapLocation = BaboKidnapperLocation02 ; #DEBUG_LINE_NO:1189
  ElseIf LocationNum == 6 ; #DEBUG_LINE_NO:1190
    KidnapLocation = BaboKidnapperLocation03 ; #DEBUG_LINE_NO:1191
  ElseIf LocationNum == 7 ; #DEBUG_LINE_NO:1192
    KidnapLocation = BaboKidnapperLocation04 ; #DEBUG_LINE_NO:1193
  ElseIf LocationNum == 10 ; #DEBUG_LINE_NO:1194
    KidnapLocation = BaboKidnapperLocationCave ; #DEBUG_LINE_NO:1195
  ElseIf LocationNum == 11 ; #DEBUG_LINE_NO:1196
    KidnapLocation = BaboKidnapperLocationCave02 ; #DEBUG_LINE_NO:1197
  ElseIf LocationNum == 12 ; #DEBUG_LINE_NO:1198
    KidnapLocation = BaboKidnapperLocationCave03 ; #DEBUG_LINE_NO:1199
  ElseIf LocationNum == 13 ; #DEBUG_LINE_NO:1200
    KidnapLocation = BaboKidnapperLocationTower01 ; #DEBUG_LINE_NO:1201
  ElseIf LocationNum == 20 ; #DEBUG_LINE_NO:1202
    KidnapLocation = BaboSlaverLocation01 ; #DEBUG_LINE_NO:1203
  ElseIf LocationNum == 21 ; #DEBUG_LINE_NO:1204
    KidnapLocation = BaboSlaverLocation02 ; #DEBUG_LINE_NO:1205
  ElseIf LocationNum == 22 ; #DEBUG_LINE_NO:1206
    KidnapLocation = BaboSlaverLocation03 ; #DEBUG_LINE_NO:1207
  ElseIf LocationNum == 23 ; #DEBUG_LINE_NO:1208
    KidnapLocation = BaboSlaverLocation04 ; #DEBUG_LINE_NO:1209
  ElseIf LocationNum == 24 ; #DEBUG_LINE_NO:1210
    KidnapLocation = BaboSlaverLocation01 ; #DEBUG_LINE_NO:1211
  ElseIf LocationNum == 25 ; #DEBUG_LINE_NO:1213
    KidnapLocation = BaboSlaverNobleHouseLocation01 ; #DEBUG_LINE_NO:1214
  ElseIf KidnapLocation == None ; #DEBUG_LINE_NO:1216
    Return False ; #DEBUG_LINE_NO:1217
  EndIf
  BaboKidnapKeyword.SendStoryEvent(KidnapLocation, pTarget as ObjectReference, pTargetFriend as ObjectReference, 0, 0) ; #DEBUG_LINE_NO:1220
  Utility.Wait(5.0) ; #DEBUG_LINE_NO:1221
  Return True ; #DEBUG_LINE_NO:1222
EndFunction

Function SpectatorChangeStatus(Int Stage)
  If BaboGlobalSpectatorSwitch.getvalue() == 1 as Float ; #DEBUG_LINE_NO:1226
    BaboSpectatorScript.setstage(Stage) ; #DEBUG_LINE_NO:1227
  EndIf
EndFunction

Function StopAlltheEncounters()
  BaboChangeLocationEvent01.stop() ; #DEBUG_LINE_NO:1232
  BaboChangeLocationEvent02.stop() ; #DEBUG_LINE_NO:1233
  BaboChangeLocationEvent02DLC02.stop() ; #DEBUG_LINE_NO:1234
  BaboChangeLocationEvent05.stop() ; #DEBUG_LINE_NO:1235
  BaboChangeLocationEvent06.stop() ; #DEBUG_LINE_NO:1236
  BaboChangeLocationEvent07.stop() ; #DEBUG_LINE_NO:1237
  BaboEncounter01.stop() ; #DEBUG_LINE_NO:1239
  BaboEncounter02.stop() ; #DEBUG_LINE_NO:1240
  BaboEncounter03.stop() ; #DEBUG_LINE_NO:1241
  BaboEncounter04.stop() ; #DEBUG_LINE_NO:1242
  BaboEncounter05.stop() ; #DEBUG_LINE_NO:1243
  BaboEncounter06.stop() ; #DEBUG_LINE_NO:1244
  BaboEncounter07.stop() ; #DEBUG_LINE_NO:1245
  BaboEncounter08.stop() ; #DEBUG_LINE_NO:1246
  BaboEncounter09.stop() ; #DEBUG_LINE_NO:1247
  BaboEncounter10.stop() ; #DEBUG_LINE_NO:1248
  BaboEncounter11.stop() ; #DEBUG_LINE_NO:1249
  BaboEncounter12.stop() ; #DEBUG_LINE_NO:1250
  BaboEncounter13.stop() ; #DEBUG_LINE_NO:1251
EndFunction

Function MiscMessagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1256
    msg = jsonutil.getstringvalue(file, "baboeventmisc01", "") ; #DEBUG_LINE_NO:1257
    Debug.notification(msg) ; #DEBUG_LINE_NO:1258
  ElseIf num == 2 ; #DEBUG_LINE_NO:1259
    msg = jsonutil.getstringvalue(file, "baboeventmisc02", "") ; #DEBUG_LINE_NO:1260
    Debug.notification(msg) ; #DEBUG_LINE_NO:1261
  ElseIf num == 3 ; #DEBUG_LINE_NO:1262
    msg = jsonutil.getstringvalue(file, "baboeventmisc03", "") ; #DEBUG_LINE_NO:1263
    Debug.notification(msg) ; #DEBUG_LINE_NO:1264
  ElseIf num == 4 ; #DEBUG_LINE_NO:1265
    msg = jsonutil.getstringvalue(file, "baboeventmisc04", "") ; #DEBUG_LINE_NO:1266
    Debug.notification(msg) ; #DEBUG_LINE_NO:1267
  Else
    msg = jsonutil.getstringvalue(file, "babonoenemy", "") ; #DEBUG_LINE_NO:1269
    Debug.notification(msg) ; #DEBUG_LINE_NO:1270
  EndIf
EndFunction

Function HirelingMessagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1277
    msg = jsonutil.getstringvalue(file, "baboeventhireling01", "") ; #DEBUG_LINE_NO:1278
  ElseIf num == 2 ; #DEBUG_LINE_NO:1279
    msg = jsonutil.getstringvalue(file, "baboeventhireling02", "") ; #DEBUG_LINE_NO:1280
  ElseIf num == 3 ; #DEBUG_LINE_NO:1281
    msg = jsonutil.getstringvalue(file, "baboeventhireling03", "") ; #DEBUG_LINE_NO:1282
  ElseIf num == 4 ; #DEBUG_LINE_NO:1283
    msg = jsonutil.getstringvalue(file, "baboeventhireling04", "") ; #DEBUG_LINE_NO:1284
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1286
EndFunction

Function MarkarthGuardMessagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1291
    msg = jsonutil.getstringvalue(file, "baboeventmarkarthguard01", "") ; #DEBUG_LINE_NO:1292
    Debug.notification(msg) ; #DEBUG_LINE_NO:1293
  ElseIf num == 2 ; #DEBUG_LINE_NO:1294
    msg = jsonutil.getstringvalue(file, "baboeventmarkarthguard02", "") ; #DEBUG_LINE_NO:1295
    Debug.notification(msg) ; #DEBUG_LINE_NO:1296
  ElseIf num == 3 ; #DEBUG_LINE_NO:1297
    msg = jsonutil.getstringvalue(file, "baboeventmarkarthguard03", "") ; #DEBUG_LINE_NO:1298
    Debug.notification(msg) ; #DEBUG_LINE_NO:1299
  ElseIf num == 4 ; #DEBUG_LINE_NO:1300
    msg = jsonutil.getstringvalue(file, "baboeventmarkarthguard04", "") ; #DEBUG_LINE_NO:1301
    Debug.notification(msg) ; #DEBUG_LINE_NO:1302
  EndIf
EndFunction

Function StealArmorMessagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1309
    msg = jsonutil.getstringvalue(file, "stealingarmorscriptarmorstolen", "") ; #DEBUG_LINE_NO:1310
  ElseIf num == 2 ; #DEBUG_LINE_NO:1311
    msg = jsonutil.getstringvalue(file, "stealingarmorscriptpantiesstolen", "") ; #DEBUG_LINE_NO:1312
  ElseIf num == 3 ; #DEBUG_LINE_NO:1313
    msg = jsonutil.getstringvalue(file, "stealingarmorscriptclothesstolen", "") ; #DEBUG_LINE_NO:1314
  EndIf
  Debug.notification(msg) ; #DEBUG_LINE_NO:1316
EndFunction

Function WindhelmNewgnisisMessagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1321
    msg = jsonutil.getstringvalue(file, "baboeventnewgnisismasterscript01", "") ; #DEBUG_LINE_NO:1322
  ElseIf num == 2 ; #DEBUG_LINE_NO:1323
    msg = jsonutil.getstringvalue(file, "baboeventnewgnisismasterscript02", "") ; #DEBUG_LINE_NO:1324
  ElseIf num == 3 ; #DEBUG_LINE_NO:1325
    msg = jsonutil.getstringvalue(file, "baboeventnewgnisismasterscript03", "") ; #DEBUG_LINE_NO:1326
  ElseIf num == 4 ; #DEBUG_LINE_NO:1327
    msg = jsonutil.getstringvalue(file, "baboeventnewgnisismasterscript04", "") ; #DEBUG_LINE_NO:1328
  ElseIf num == 5 ; #DEBUG_LINE_NO:1329
    msg = jsonutil.getstringvalue(file, "baboeventnewgnisismasterscript05", "") ; #DEBUG_LINE_NO:1330
  ElseIf num == 6 ; #DEBUG_LINE_NO:1331
    msg = jsonutil.getstringvalue(file, "baboeventnewgnisismasterscript06", "") ; #DEBUG_LINE_NO:1332
  ElseIf num == 7 ; #DEBUG_LINE_NO:1333
    msg = jsonutil.getstringvalue(file, "baboeventnewgnisismasterscript07", "") ; #DEBUG_LINE_NO:1334
  ElseIf num == 8 ; #DEBUG_LINE_NO:1335
    msg = jsonutil.getstringvalue(file, "baboeventnewgnisismasterscript08", "") ; #DEBUG_LINE_NO:1336
  ElseIf num == 9 ; #DEBUG_LINE_NO:1337
    msg = jsonutil.getstringvalue(file, "baboeventnewgnisismasterscript09", "") ; #DEBUG_LINE_NO:1338
  ElseIf num == 10 ; #DEBUG_LINE_NO:1339
    msg = jsonutil.getstringvalue(file, "baboeventnewgnisismasterscript10", "") ; #DEBUG_LINE_NO:1340
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1342
EndFunction

Function WhiterunOrcVisitMessagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1347
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunorcvisitiors01", "") ; #DEBUG_LINE_NO:1348
  ElseIf num == 2 ; #DEBUG_LINE_NO:1349
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunorcvisitiors02", "") ; #DEBUG_LINE_NO:1350
  ElseIf num == 3 ; #DEBUG_LINE_NO:1351
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunorcvisitiors03", "") ; #DEBUG_LINE_NO:1352
  ElseIf num == 4 ; #DEBUG_LINE_NO:1353
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunorcvisitiors04", "") ; #DEBUG_LINE_NO:1354
  ElseIf num == 5 ; #DEBUG_LINE_NO:1355
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunorcvisitiors05", "") ; #DEBUG_LINE_NO:1356
  ElseIf num == 6 ; #DEBUG_LINE_NO:1357
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunorcvisitiors06", "") ; #DEBUG_LINE_NO:1358
  ElseIf num == 7 ; #DEBUG_LINE_NO:1359
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunorcvisitiors07", "") ; #DEBUG_LINE_NO:1360
  ElseIf num == 8 ; #DEBUG_LINE_NO:1361
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunorcvisitiors08", "") ; #DEBUG_LINE_NO:1362
  ElseIf num == 9 ; #DEBUG_LINE_NO:1363
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunorcvisitiors09", "") ; #DEBUG_LINE_NO:1364
  ElseIf num == 10 ; #DEBUG_LINE_NO:1365
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunorcvisitiors10", "") ; #DEBUG_LINE_NO:1366
  ElseIf num == 11 ; #DEBUG_LINE_NO:1367
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunorcvisitiors11", "") ; #DEBUG_LINE_NO:1368
  ElseIf num == 12 ; #DEBUG_LINE_NO:1369
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunorcvisitiors12", "") ; #DEBUG_LINE_NO:1370
  ElseIf num == 13 ; #DEBUG_LINE_NO:1371
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunorcvisitiors13", "") ; #DEBUG_LINE_NO:1372
  ElseIf num == 14 ; #DEBUG_LINE_NO:1373
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunorcvisitiors14", "") ; #DEBUG_LINE_NO:1374
  ElseIf num == 15 ; #DEBUG_LINE_NO:1375
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunorcvisitiors15", "") ; #DEBUG_LINE_NO:1376
  ElseIf num == 16 ; #DEBUG_LINE_NO:1377
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunorcvisitiors16", "") ; #DEBUG_LINE_NO:1378
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1380
EndFunction

Function WhiterunViceCaptainMessagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1385
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunvicecapatain01", "") ; #DEBUG_LINE_NO:1386
  ElseIf num == 2 ; #DEBUG_LINE_NO:1387
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunvicecapatain02", "") ; #DEBUG_LINE_NO:1388
  ElseIf num == 3 ; #DEBUG_LINE_NO:1389
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunvicecapatain03", "") ; #DEBUG_LINE_NO:1390
  ElseIf num == 4 ; #DEBUG_LINE_NO:1391
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunvicecapatain04", "") ; #DEBUG_LINE_NO:1392
  ElseIf num == 5 ; #DEBUG_LINE_NO:1393
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunvicecapatain05", "") ; #DEBUG_LINE_NO:1394
  ElseIf num == 6 ; #DEBUG_LINE_NO:1395
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunvicecapatain06", "") ; #DEBUG_LINE_NO:1396
  ElseIf num == 7 ; #DEBUG_LINE_NO:1397
    msg = jsonutil.getstringvalue(file, "baboeventwhiterunvicecapatain07", "") ; #DEBUG_LINE_NO:1398
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1400
EndFunction

Function BaboDiaMessagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1405
    msg = jsonutil.getstringvalue(file, "babodiaquest01", "") ; #DEBUG_LINE_NO:1406
  ElseIf num == 2 ; #DEBUG_LINE_NO:1407
    msg = jsonutil.getstringvalue(file, "babodiaquest02", "") ; #DEBUG_LINE_NO:1408
  ElseIf num == 3 ; #DEBUG_LINE_NO:1409
    msg = jsonutil.getstringvalue(file, "babodiaquest03", "") ; #DEBUG_LINE_NO:1410
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1412
EndFunction

Function MonitorMessagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1417
    msg = jsonutil.getstringvalue(file, "babodiamonitor01", "") ; #DEBUG_LINE_NO:1418
  ElseIf num == 2 ; #DEBUG_LINE_NO:1419
    msg = jsonutil.getstringvalue(file, "babodiamonitor02", "") ; #DEBUG_LINE_NO:1420
  ElseIf num == 3 ; #DEBUG_LINE_NO:1421
    msg = jsonutil.getstringvalue(file, "babodiamonitor03", "") ; #DEBUG_LINE_NO:1422
  ElseIf num == 4 ; #DEBUG_LINE_NO:1423
    msg = jsonutil.getstringvalue(file, "babodiamonitor04", "") ; #DEBUG_LINE_NO:1424
  EndIf
  Debug.notification(msg) ; #DEBUG_LINE_NO:1426
EndFunction

Function BadLoanSharkbox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1432
    msg = jsonutil.getstringvalue(file, "baboloanshark01", "") ; #DEBUG_LINE_NO:1433
  ElseIf num == 2 ; #DEBUG_LINE_NO:1434
    msg = jsonutil.getstringvalue(file, "baboloanshark02", "") ; #DEBUG_LINE_NO:1435
  ElseIf num == 3 ; #DEBUG_LINE_NO:1436
    msg = jsonutil.getstringvalue(file, "baboloanshark03", "") ; #DEBUG_LINE_NO:1437
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1439
EndFunction

Function BadRieklingDuelMessagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1445
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_01", "") ; #DEBUG_LINE_NO:1446
  ElseIf num == 2 ; #DEBUG_LINE_NO:1447
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_02", "") ; #DEBUG_LINE_NO:1448
  ElseIf num == 3 ; #DEBUG_LINE_NO:1449
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_03", "") ; #DEBUG_LINE_NO:1450
  ElseIf num == 4 ; #DEBUG_LINE_NO:1451
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_04", "") ; #DEBUG_LINE_NO:1452
  ElseIf num == 5 ; #DEBUG_LINE_NO:1453
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_05", "") ; #DEBUG_LINE_NO:1454
  ElseIf num == 6 ; #DEBUG_LINE_NO:1455
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_06", "") ; #DEBUG_LINE_NO:1456
  ElseIf num == 7 ; #DEBUG_LINE_NO:1457
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_07", "") ; #DEBUG_LINE_NO:1458
  ElseIf num == 8 ; #DEBUG_LINE_NO:1459
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_08", "") ; #DEBUG_LINE_NO:1460
  ElseIf num == 9 ; #DEBUG_LINE_NO:1461
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_09", "") ; #DEBUG_LINE_NO:1462
  ElseIf num == 10 ; #DEBUG_LINE_NO:1463
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_10", "") ; #DEBUG_LINE_NO:1464
  ElseIf num == 11 ; #DEBUG_LINE_NO:1465
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_11", "") ; #DEBUG_LINE_NO:1466
  ElseIf num == 12 ; #DEBUG_LINE_NO:1467
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_12", "") ; #DEBUG_LINE_NO:1468
  ElseIf num == 13 ; #DEBUG_LINE_NO:1469
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_13", "") ; #DEBUG_LINE_NO:1470
  ElseIf num == 14 ; #DEBUG_LINE_NO:1471
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_14", "") ; #DEBUG_LINE_NO:1472
  ElseIf num == 15 ; #DEBUG_LINE_NO:1473
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_15", "") ; #DEBUG_LINE_NO:1474
  ElseIf num == 16 ; #DEBUG_LINE_NO:1475
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_16", "") ; #DEBUG_LINE_NO:1476
  ElseIf num == 17 ; #DEBUG_LINE_NO:1477
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_17", "") ; #DEBUG_LINE_NO:1478
  ElseIf num == 18 ; #DEBUG_LINE_NO:1479
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_18", "") ; #DEBUG_LINE_NO:1480
  ElseIf num == 19 ; #DEBUG_LINE_NO:1481
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_19", "") ; #DEBUG_LINE_NO:1482
  ElseIf num == 20 ; #DEBUG_LINE_NO:1483
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_20", "") ; #DEBUG_LINE_NO:1484
  ElseIf num == 21 ; #DEBUG_LINE_NO:1485
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_21", "") ; #DEBUG_LINE_NO:1486
  ElseIf num == 22 ; #DEBUG_LINE_NO:1487
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_22", "") ; #DEBUG_LINE_NO:1488
  ElseIf num == 23 ; #DEBUG_LINE_NO:1489
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_23", "") ; #DEBUG_LINE_NO:1490
  ElseIf num == 24 ; #DEBUG_LINE_NO:1491
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_24", "") ; #DEBUG_LINE_NO:1492
  ElseIf num == 25 ; #DEBUG_LINE_NO:1493
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_25", "") ; #DEBUG_LINE_NO:1494
  ElseIf num == 26 ; #DEBUG_LINE_NO:1495
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_26", "") ; #DEBUG_LINE_NO:1496
  ElseIf num == 27 ; #DEBUG_LINE_NO:1497
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_27", "") ; #DEBUG_LINE_NO:1498
  ElseIf num == 28 ; #DEBUG_LINE_NO:1499
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_28", "") ; #DEBUG_LINE_NO:1500
  ElseIf num == 29 ; #DEBUG_LINE_NO:1501
    msg = jsonutil.getstringvalue(file, "baborieklingduel01_29", "") ; #DEBUG_LINE_NO:1502
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1504
EndFunction

Function BadEndMessagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1510
    msg = jsonutil.getstringvalue(file, "babobadend01", "") ; #DEBUG_LINE_NO:1511
    Debug.notification(msg) ; #DEBUG_LINE_NO:1512
  ElseIf num == 2 ; #DEBUG_LINE_NO:1513
    msg = jsonutil.getstringvalue(file, "babobadend02", "") ; #DEBUG_LINE_NO:1514
    Debug.notification(msg) ; #DEBUG_LINE_NO:1515
  ElseIf num == 3 ; #DEBUG_LINE_NO:1516
    msg = jsonutil.getstringvalue(file, "babobadend03", "") ; #DEBUG_LINE_NO:1517
    Debug.notification(msg) ; #DEBUG_LINE_NO:1518
  ElseIf num == 4 ; #DEBUG_LINE_NO:1519
    msg = jsonutil.getstringvalue(file, "babobadend04", "") ; #DEBUG_LINE_NO:1520
    Debug.notification(msg) ; #DEBUG_LINE_NO:1521
  ElseIf num == 5 ; #DEBUG_LINE_NO:1522
    msg = jsonutil.getstringvalue(file, "babobadend05", "") ; #DEBUG_LINE_NO:1523
    Debug.notification(msg) ; #DEBUG_LINE_NO:1524
  ElseIf num == 6 ; #DEBUG_LINE_NO:1525
    msg = jsonutil.getstringvalue(file, "babobadend06", "") ; #DEBUG_LINE_NO:1526
    Debug.notification(msg) ; #DEBUG_LINE_NO:1527
  ElseIf num == 7 ; #DEBUG_LINE_NO:1528
    msg = jsonutil.getstringvalue(file, "babobadend07", "") ; #DEBUG_LINE_NO:1529
    Debug.notification(msg) ; #DEBUG_LINE_NO:1530
  ElseIf num == 8 ; #DEBUG_LINE_NO:1531
    msg = jsonutil.getstringvalue(file, "babobadend08", "") ; #DEBUG_LINE_NO:1532
    Debug.notification(msg) ; #DEBUG_LINE_NO:1533
  ElseIf num == 9 ; #DEBUG_LINE_NO:1534
    msg = jsonutil.getstringvalue(file, "babobadend09", "") ; #DEBUG_LINE_NO:1535
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1536
  ElseIf num == 10 ; #DEBUG_LINE_NO:1537
    msg = jsonutil.getstringvalue(file, "babobadend10", "") ; #DEBUG_LINE_NO:1538
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1539
  EndIf
EndFunction

Function EncounterEvent01Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1546
    msg = jsonutil.getstringvalue(file, "baboencounterevent01_01", "") ; #DEBUG_LINE_NO:1547
  ElseIf num == 2 ; #DEBUG_LINE_NO:1548
    msg = jsonutil.getstringvalue(file, "baboencounterevent01_02", "") ; #DEBUG_LINE_NO:1549
  ElseIf num == 3 ; #DEBUG_LINE_NO:1550
    msg = jsonutil.getstringvalue(file, "baboencounterevent01_03", "") ; #DEBUG_LINE_NO:1551
  ElseIf num == 4 ; #DEBUG_LINE_NO:1552
    msg = jsonutil.getstringvalue(file, "baboencounterevent01_04", "") ; #DEBUG_LINE_NO:1553
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1555
EndFunction

Function EncounterEvent02Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1561
    msg = jsonutil.getstringvalue(file, "baboencounterevent02_01", "") ; #DEBUG_LINE_NO:1562
  ElseIf num == 2 ; #DEBUG_LINE_NO:1563
    msg = jsonutil.getstringvalue(file, "baboencounterevent02_02", "") ; #DEBUG_LINE_NO:1564
  ElseIf num == 3 ; #DEBUG_LINE_NO:1565
    msg = jsonutil.getstringvalue(file, "baboencounterevent02_03", "") ; #DEBUG_LINE_NO:1566
  ElseIf num == 4 ; #DEBUG_LINE_NO:1567
    msg = jsonutil.getstringvalue(file, "baboencounterevent02_04", "") ; #DEBUG_LINE_NO:1568
  ElseIf num == 5 ; #DEBUG_LINE_NO:1569
    msg = jsonutil.getstringvalue(file, "baboencounterevent02_05", "") ; #DEBUG_LINE_NO:1570
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1572
EndFunction

Function EncounterEvent03Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1578
    msg = jsonutil.getstringvalue(file, "baboencounterevent03_01", "") ; #DEBUG_LINE_NO:1579
  ElseIf num == 2 ; #DEBUG_LINE_NO:1580
    msg = jsonutil.getstringvalue(file, "baboencounterevent03_02", "") ; #DEBUG_LINE_NO:1581
  ElseIf num == 3 ; #DEBUG_LINE_NO:1582
    msg = jsonutil.getstringvalue(file, "baboencounterevent03_03", "") ; #DEBUG_LINE_NO:1583
  ElseIf num == 4 ; #DEBUG_LINE_NO:1584
    msg = jsonutil.getstringvalue(file, "baboencounterevent03_04", "") ; #DEBUG_LINE_NO:1585
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1587
EndFunction

Function EncounterEvent04Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1593
    msg = jsonutil.getstringvalue(file, "baboencounterevent04_01", "") ; #DEBUG_LINE_NO:1594
  ElseIf num == 2 ; #DEBUG_LINE_NO:1595
    msg = jsonutil.getstringvalue(file, "baboencounterevent04_02", "") ; #DEBUG_LINE_NO:1596
  ElseIf num == 3 ; #DEBUG_LINE_NO:1597
    msg = jsonutil.getstringvalue(file, "baboencounterevent04_03", "") ; #DEBUG_LINE_NO:1598
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1600
EndFunction

Function EncounterEvent05Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1606
    msg = jsonutil.getstringvalue(file, "baboencounterevent05_01", "") ; #DEBUG_LINE_NO:1607
  ElseIf num == 2 ; #DEBUG_LINE_NO:1608
    msg = jsonutil.getstringvalue(file, "baboencounterevent05_02", "") ; #DEBUG_LINE_NO:1609
  ElseIf num == 3 ; #DEBUG_LINE_NO:1610
    msg = jsonutil.getstringvalue(file, "baboencounterevent05_03", "") ; #DEBUG_LINE_NO:1611
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1613
EndFunction

Function EncounterEvent06Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1619
    msg = jsonutil.getstringvalue(file, "baboencounterevent06_01", "") ; #DEBUG_LINE_NO:1620
    Debug.notification(msg) ; #DEBUG_LINE_NO:1621
  ElseIf num == 2 ; #DEBUG_LINE_NO:1622
    msg = jsonutil.getstringvalue(file, "baboencounterevent06_02", "") ; #DEBUG_LINE_NO:1623
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1624
  ElseIf num == 3 ; #DEBUG_LINE_NO:1625
    msg = jsonutil.getstringvalue(file, "baboencounterevent06_03", "") ; #DEBUG_LINE_NO:1626
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1627
  ElseIf num == 3 ; #DEBUG_LINE_NO:1628
    msg = jsonutil.getstringvalue(file, "baboencounterevent06_04", "") ; #DEBUG_LINE_NO:1629
    Debug.notification(msg) ; #DEBUG_LINE_NO:1630
  EndIf
EndFunction

Function EncounterEvent07Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1637
    msg = jsonutil.getstringvalue(file, "baboencounterevent07_01", "") ; #DEBUG_LINE_NO:1638
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1639
  ElseIf num == 2 ; #DEBUG_LINE_NO:1640
    msg = jsonutil.getstringvalue(file, "baboencounterevent07_02", "") ; #DEBUG_LINE_NO:1641
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1642
  ElseIf num == 3 ; #DEBUG_LINE_NO:1643
    msg = jsonutil.getstringvalue(file, "baboencounterevent07_03", "") ; #DEBUG_LINE_NO:1644
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1645
  ElseIf num == 4 ; #DEBUG_LINE_NO:1646
    msg = jsonutil.getstringvalue(file, "baboencounterevent07_04", "") ; #DEBUG_LINE_NO:1647
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1648
  ElseIf num == 5 ; #DEBUG_LINE_NO:1649
    msg = jsonutil.getstringvalue(file, "baboencounterevent07_05", "") ; #DEBUG_LINE_NO:1650
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1651
  ElseIf num == 6 ; #DEBUG_LINE_NO:1652
    msg = jsonutil.getstringvalue(file, "baboencounterevent07_06", "") ; #DEBUG_LINE_NO:1653
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1654
  ElseIf num == 7 ; #DEBUG_LINE_NO:1655
    msg = jsonutil.getstringvalue(file, "baboencounterevent07_07", "") ; #DEBUG_LINE_NO:1656
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1657
  ElseIf num == 8 ; #DEBUG_LINE_NO:1658
    msg = jsonutil.getstringvalue(file, "baboencounterevent07_08", "") ; #DEBUG_LINE_NO:1659
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1660
  EndIf
EndFunction

Function EncounterEvent08Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1667
    msg = jsonutil.getstringvalue(file, "baboencounterevent08_01", "") ; #DEBUG_LINE_NO:1668
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1669
  ElseIf num == 2 ; #DEBUG_LINE_NO:1670
    msg = jsonutil.getstringvalue(file, "baboencounterevent08_02", "") ; #DEBUG_LINE_NO:1671
    Debug.notification(msg) ; #DEBUG_LINE_NO:1672
  EndIf
EndFunction

Function EncounterEvent09Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1679
    msg = jsonutil.getstringvalue(file, "baboencounterevent09_01", "") ; #DEBUG_LINE_NO:1680
  ElseIf num == 2 ; #DEBUG_LINE_NO:1681
    msg = jsonutil.getstringvalue(file, "baboencounterevent09_02", "") ; #DEBUG_LINE_NO:1682
  ElseIf num == 3 ; #DEBUG_LINE_NO:1683
    msg = jsonutil.getstringvalue(file, "baboencounterevent09_03", "") ; #DEBUG_LINE_NO:1684
  ElseIf num == 4 ; #DEBUG_LINE_NO:1685
    msg = jsonutil.getstringvalue(file, "baboencounterevent09_04", "") ; #DEBUG_LINE_NO:1686
  ElseIf num == 5 ; #DEBUG_LINE_NO:1687
    msg = jsonutil.getstringvalue(file, "baboencounterevent09_05", "") ; #DEBUG_LINE_NO:1688
  ElseIf num == 6 ; #DEBUG_LINE_NO:1689
    msg = jsonutil.getstringvalue(file, "baboencounterevent09_06", "") ; #DEBUG_LINE_NO:1690
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1693
EndFunction

Function EncounterEvent10Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1699
    msg = jsonutil.getstringvalue(file, "baboencounterevent10_01", "") ; #DEBUG_LINE_NO:1700
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1701
  ElseIf num == 2 ; #DEBUG_LINE_NO:1702
    msg = jsonutil.getstringvalue(file, "baboencounterevent10_02", "") ; #DEBUG_LINE_NO:1703
    Debug.notification(msg) ; #DEBUG_LINE_NO:1704
  EndIf
EndFunction

Function EncounterEvent11Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1711
    msg = jsonutil.getstringvalue(file, "baboencounterevent11_01", "") ; #DEBUG_LINE_NO:1712
  ElseIf num == 2 ; #DEBUG_LINE_NO:1713
    msg = jsonutil.getstringvalue(file, "baboencounterevent11_02", "") ; #DEBUG_LINE_NO:1714
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1716
EndFunction

Function EncounterEvent12Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1722
    msg = jsonutil.getstringvalue(file, "baboencounterevent12_01", "") ; #DEBUG_LINE_NO:1723
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1724
  ElseIf num == 2 ; #DEBUG_LINE_NO:1725
    msg = jsonutil.getstringvalue(file, "baboencounterevent12_02", "") ; #DEBUG_LINE_NO:1726
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1727
  ElseIf num == 3 ; #DEBUG_LINE_NO:1728
    msg = jsonutil.getstringvalue(file, "baboencounterevent12_03", "") ; #DEBUG_LINE_NO:1729
    Debug.notification(msg) ; #DEBUG_LINE_NO:1730
  ElseIf num == 4 ; #DEBUG_LINE_NO:1731
    msg = jsonutil.getstringvalue(file, "baboencounterevent12_04", "") ; #DEBUG_LINE_NO:1732
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1733
  ElseIf num == 5 ; #DEBUG_LINE_NO:1734
    msg = jsonutil.getstringvalue(file, "baboencounterevent12_05", "") ; #DEBUG_LINE_NO:1735
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1736
  ElseIf num == 6 ; #DEBUG_LINE_NO:1737
    msg = jsonutil.getstringvalue(file, "baboencounterevent12_06", "") ; #DEBUG_LINE_NO:1738
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1739
  EndIf
EndFunction

Function EncounterEvent13Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1746
    msg = jsonutil.getstringvalue(file, "baboencounterevent13_01", "") ; #DEBUG_LINE_NO:1747
  ElseIf num == 2 ; #DEBUG_LINE_NO:1748
    msg = jsonutil.getstringvalue(file, "baboencounterevent13_02", "") ; #DEBUG_LINE_NO:1749
  ElseIf num == 3 ; #DEBUG_LINE_NO:1750
    msg = jsonutil.getstringvalue(file, "baboencounterevent13_03", "") ; #DEBUG_LINE_NO:1751
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1753
EndFunction

Function ChangeLocationEvent01Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1759
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent01_01", "") ; #DEBUG_LINE_NO:1760
  ElseIf num == 2 ; #DEBUG_LINE_NO:1761
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent01_02", "") ; #DEBUG_LINE_NO:1762
  ElseIf num == 3 ; #DEBUG_LINE_NO:1763
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent01_03", "") ; #DEBUG_LINE_NO:1764
  ElseIf num == 4 ; #DEBUG_LINE_NO:1765
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent01_04", "") ; #DEBUG_LINE_NO:1766
  ElseIf num == 5 ; #DEBUG_LINE_NO:1767
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent01_05", "") ; #DEBUG_LINE_NO:1768
  ElseIf num == 6 ; #DEBUG_LINE_NO:1769
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent01_06", "") ; #DEBUG_LINE_NO:1770
  ElseIf num == 7 ; #DEBUG_LINE_NO:1771
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent01_07", "") ; #DEBUG_LINE_NO:1772
  ElseIf num == 8 ; #DEBUG_LINE_NO:1773
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent01_08", "") ; #DEBUG_LINE_NO:1774
  ElseIf num == 9 ; #DEBUG_LINE_NO:1775
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent01_09", "") ; #DEBUG_LINE_NO:1776
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1778
EndFunction

Function ChangeLocationEvent02Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1784
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent02_01", "") ; #DEBUG_LINE_NO:1785
  ElseIf num == 2 ; #DEBUG_LINE_NO:1786
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent02_02", "") ; #DEBUG_LINE_NO:1787
  ElseIf num == 3 ; #DEBUG_LINE_NO:1788
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent02_03", "") ; #DEBUG_LINE_NO:1789
  ElseIf num == 4 ; #DEBUG_LINE_NO:1790
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent02_04", "") ; #DEBUG_LINE_NO:1791
  ElseIf num == 5 ; #DEBUG_LINE_NO:1792
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent02_05", "") ; #DEBUG_LINE_NO:1793
  ElseIf num == 6 ; #DEBUG_LINE_NO:1794
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent02_06", "") ; #DEBUG_LINE_NO:1795
  ElseIf num == 7 ; #DEBUG_LINE_NO:1796
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent02_07", "") ; #DEBUG_LINE_NO:1797
  ElseIf num == 8 ; #DEBUG_LINE_NO:1798
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent02_08", "") ; #DEBUG_LINE_NO:1799
  ElseIf num == 9 ; #DEBUG_LINE_NO:1800
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent02_09", "") ; #DEBUG_LINE_NO:1801
  ElseIf num == 10 ; #DEBUG_LINE_NO:1802
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent02_10", "") ; #DEBUG_LINE_NO:1803
  ElseIf num == 11 ; #DEBUG_LINE_NO:1804
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent02_11", "") ; #DEBUG_LINE_NO:1805
  ElseIf num == 12 ; #DEBUG_LINE_NO:1806
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent02_12", "") ; #DEBUG_LINE_NO:1807
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1809
EndFunction

Function NightgateInnMessagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1815
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent03_01", "") ; #DEBUG_LINE_NO:1816
  ElseIf num == 2 ; #DEBUG_LINE_NO:1817
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent03_02", "") ; #DEBUG_LINE_NO:1818
  ElseIf num == 3 ; #DEBUG_LINE_NO:1819
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent03_03", "") ; #DEBUG_LINE_NO:1820
  ElseIf num == 4 ; #DEBUG_LINE_NO:1821
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent03_04", "") ; #DEBUG_LINE_NO:1822
  ElseIf num == 5 ; #DEBUG_LINE_NO:1823
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent03_05", "") ; #DEBUG_LINE_NO:1824
  ElseIf num == 6 ; #DEBUG_LINE_NO:1825
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent03_06", "") ; #DEBUG_LINE_NO:1826
  ElseIf num == 7 ; #DEBUG_LINE_NO:1827
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent03_07", "") ; #DEBUG_LINE_NO:1828
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1830
EndFunction

Function ChangeLocationEvent04Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1836
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent04_01", "") ; #DEBUG_LINE_NO:1837
  ElseIf num == 2 ; #DEBUG_LINE_NO:1838
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent04_02", "") ; #DEBUG_LINE_NO:1839
  Else
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent04_00", "") ; #DEBUG_LINE_NO:1841
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1843
EndFunction

Function ChangeLocationEvent05Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1849
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent05_01", "") ; #DEBUG_LINE_NO:1850
  ElseIf num == 2 ; #DEBUG_LINE_NO:1851
    msg = jsonutil.getstringvalue(file, "BaboChangeLocationEvent05_02", "") ; #DEBUG_LINE_NO:1852
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1854
EndFunction

Function ChangeLocationEvent06Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1860
    msg = jsonutil.getstringvalue(file, "babochangelocationevent06_01", "") ; #DEBUG_LINE_NO:1861
    Debug.notification(msg) ; #DEBUG_LINE_NO:1862
  ElseIf num == 2 ; #DEBUG_LINE_NO:1863
    msg = jsonutil.getstringvalue(file, "babochangelocationevent06_02", "") ; #DEBUG_LINE_NO:1864
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1865
  ElseIf num == 3 ; #DEBUG_LINE_NO:1866
    msg = jsonutil.getstringvalue(file, "babochangelocationevent06_03", "") ; #DEBUG_LINE_NO:1867
    Debug.notification(msg) ; #DEBUG_LINE_NO:1868
  ElseIf num == 4 ; #DEBUG_LINE_NO:1869
    msg = jsonutil.getstringvalue(file, "babochangelocationevent06_04", "") ; #DEBUG_LINE_NO:1870
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1871
  EndIf
EndFunction

Function ChangeLocationEvent07Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1877
    msg = jsonutil.getstringvalue(file, "babochangelocationevent07_01", "") ; #DEBUG_LINE_NO:1878
    Debug.notification(msg) ; #DEBUG_LINE_NO:1879
  ElseIf num == 2 ; #DEBUG_LINE_NO:1880
    msg = jsonutil.getstringvalue(file, "babochangelocationevent07_02", "") ; #DEBUG_LINE_NO:1881
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1882
  ElseIf num == 3 ; #DEBUG_LINE_NO:1883
    msg = jsonutil.getstringvalue(file, "babochangelocationevent07_03", "") ; #DEBUG_LINE_NO:1884
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1885
  ElseIf num == 4 ; #DEBUG_LINE_NO:1886
    msg = jsonutil.getstringvalue(file, "babochangelocationevent07_04", "") ; #DEBUG_LINE_NO:1887
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1888
  ElseIf num == 5 ; #DEBUG_LINE_NO:1889
    msg = jsonutil.getstringvalue(file, "babochangelocationevent07_05", "") ; #DEBUG_LINE_NO:1890
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1891
  ElseIf num == 6 ; #DEBUG_LINE_NO:1892
    msg = jsonutil.getstringvalue(file, "babochangelocationevent07_06", "") ; #DEBUG_LINE_NO:1893
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1894
  ElseIf num == 7 ; #DEBUG_LINE_NO:1895
    msg = jsonutil.getstringvalue(file, "babochangelocationevent07_07", "") ; #DEBUG_LINE_NO:1896
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1897
  EndIf
EndFunction

Function ChangeLocationEvent08Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1903
    msg = jsonutil.getstringvalue(file, "babochangelocationevent08_01", "") ; #DEBUG_LINE_NO:1904
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1905
  ElseIf num == 2 ; #DEBUG_LINE_NO:1906
    msg = jsonutil.getstringvalue(file, "babochangelocationevent08_02", "") ; #DEBUG_LINE_NO:1907
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1908
  ElseIf num == 3 ; #DEBUG_LINE_NO:1909
    msg = jsonutil.getstringvalue(file, "babochangelocationevent08_03", "") ; #DEBUG_LINE_NO:1910
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1911
  ElseIf num == 4 ; #DEBUG_LINE_NO:1912
    msg = jsonutil.getstringvalue(file, "babochangelocationevent08_04", "") ; #DEBUG_LINE_NO:1913
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1914
  ElseIf num == 5 ; #DEBUG_LINE_NO:1915
    msg = jsonutil.getstringvalue(file, "babochangelocationevent08_05", "") ; #DEBUG_LINE_NO:1916
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1917
  ElseIf num == 6 ; #DEBUG_LINE_NO:1918
    msg = jsonutil.getstringvalue(file, "babochangelocationevent08_06", "") ; #DEBUG_LINE_NO:1919
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1920
  ElseIf num == 7 ; #DEBUG_LINE_NO:1921
    msg = jsonutil.getstringvalue(file, "babochangelocationevent08_07", "") ; #DEBUG_LINE_NO:1922
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1923
  ElseIf num == 8 ; #DEBUG_LINE_NO:1924
    msg = jsonutil.getstringvalue(file, "babochangelocationevent08_08", "") ; #DEBUG_LINE_NO:1925
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1926
  ElseIf num == 9 ; #DEBUG_LINE_NO:1927
    msg = jsonutil.getstringvalue(file, "babochangelocationevent08_09", "") ; #DEBUG_LINE_NO:1928
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1929
  ElseIf num == 10 ; #DEBUG_LINE_NO:1930
    msg = jsonutil.getstringvalue(file, "babochangelocationevent08_10", "") ; #DEBUG_LINE_NO:1931
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1932
  ElseIf num == 11 ; #DEBUG_LINE_NO:1933
    msg = jsonutil.getstringvalue(file, "babochangelocationevent08_11", "") ; #DEBUG_LINE_NO:1934
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1935
  EndIf
EndFunction

Function AnimalCareEventMessagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1941
    msg = jsonutil.getstringvalue(file, "baboanimalcareevent01_01", "") ; #DEBUG_LINE_NO:1942
  ElseIf num == 2 ; #DEBUG_LINE_NO:1943
    msg = jsonutil.getstringvalue(file, "baboanimalcareevent01_02", "") ; #DEBUG_LINE_NO:1944
  ElseIf num == 3 ; #DEBUG_LINE_NO:1945
    msg = jsonutil.getstringvalue(file, "baboanimalcareevent01_03", "") ; #DEBUG_LINE_NO:1946
  ElseIf num == 4 ; #DEBUG_LINE_NO:1947
    msg = jsonutil.getstringvalue(file, "baboanimalcareevent01_04", "") ; #DEBUG_LINE_NO:1948
  ElseIf num == 5 ; #DEBUG_LINE_NO:1949
    msg = jsonutil.getstringvalue(file, "baboanimalcareevent01_05", "") ; #DEBUG_LINE_NO:1950
  ElseIf num == 6 ; #DEBUG_LINE_NO:1951
    msg = jsonutil.getstringvalue(file, "baboanimalcareevent01_06", "") ; #DEBUG_LINE_NO:1952
  ElseIf num == 7 ; #DEBUG_LINE_NO:1953
    msg = jsonutil.getstringvalue(file, "baboanimalcareevent01_07", "") ; #DEBUG_LINE_NO:1954
  ElseIf num == 8 ; #DEBUG_LINE_NO:1955
    msg = jsonutil.getstringvalue(file, "baboanimalcareevent01_08", "") ; #DEBUG_LINE_NO:1956
  ElseIf num == 9 ; #DEBUG_LINE_NO:1957
    msg = jsonutil.getstringvalue(file, "baboanimalcareevent01_09", "") ; #DEBUG_LINE_NO:1958
  EndIf
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1961
EndFunction

Function AnimalCareMarkarthEventMessagebox(Int num)
  String msg = jsonutil.getstringvalue(file, "baboanimalcaremarkarthevent_" + num as String, "") ; #DEBUG_LINE_NO:1966
  Debug.messagebox(msg) ; #DEBUG_LINE_NO:1967
EndFunction

Function KidnapEvent01Messagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:1972
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_01", "") ; #DEBUG_LINE_NO:1973
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1974
  ElseIf num == 2 ; #DEBUG_LINE_NO:1975
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_02", "") ; #DEBUG_LINE_NO:1976
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1977
  ElseIf num == 3 ; #DEBUG_LINE_NO:1978
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_03", "") ; #DEBUG_LINE_NO:1979
    Debug.notification(msg) ; #DEBUG_LINE_NO:1980
  ElseIf num == 4 ; #DEBUG_LINE_NO:1981
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_04", "") ; #DEBUG_LINE_NO:1982
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1983
  ElseIf num == 5 ; #DEBUG_LINE_NO:1984
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_05", "") ; #DEBUG_LINE_NO:1985
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1986
  ElseIf num == 6 ; #DEBUG_LINE_NO:1987
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_06", "") ; #DEBUG_LINE_NO:1988
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1989
  ElseIf num == 7 ; #DEBUG_LINE_NO:1990
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_07", "") ; #DEBUG_LINE_NO:1991
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1992
  ElseIf num == 8 ; #DEBUG_LINE_NO:1993
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_08", "") ; #DEBUG_LINE_NO:1994
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1995
  ElseIf num == 9 ; #DEBUG_LINE_NO:1996
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_09", "") ; #DEBUG_LINE_NO:1997
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:1998
  ElseIf num == 10 ; #DEBUG_LINE_NO:1999
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_10", "") ; #DEBUG_LINE_NO:2000
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2001
  ElseIf num == 11 ; #DEBUG_LINE_NO:2002
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_11", "") ; #DEBUG_LINE_NO:2003
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2004
  ElseIf num == 12 ; #DEBUG_LINE_NO:2005
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_12", "") ; #DEBUG_LINE_NO:2006
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2007
  ElseIf num == 13 ; #DEBUG_LINE_NO:2008
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_13", "") ; #DEBUG_LINE_NO:2009
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2010
  ElseIf num == 14 ; #DEBUG_LINE_NO:2011
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_14", "") ; #DEBUG_LINE_NO:2012
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2013
  ElseIf num == 15 ; #DEBUG_LINE_NO:2014
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_15", "") ; #DEBUG_LINE_NO:2015
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2016
  ElseIf num == 16 ; #DEBUG_LINE_NO:2017
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_16", "") ; #DEBUG_LINE_NO:2018
    Debug.notification(msg) ; #DEBUG_LINE_NO:2019
  ElseIf num == 17 ; #DEBUG_LINE_NO:2020
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_17", "") ; #DEBUG_LINE_NO:2021
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2022
  ElseIf num == 18 ; #DEBUG_LINE_NO:2023
    msg = jsonutil.getstringvalue(file, "babokidnapevent01_18", "") ; #DEBUG_LINE_NO:2024
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2025
  EndIf
EndFunction

Function SlaveryEventMessagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:2031
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_01", "") ; #DEBUG_LINE_NO:2032
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2033
  ElseIf num == 2 ; #DEBUG_LINE_NO:2034
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_02", "") ; #DEBUG_LINE_NO:2035
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2036
  ElseIf num == 3 ; #DEBUG_LINE_NO:2037
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_03", "") ; #DEBUG_LINE_NO:2038
    Debug.notification(msg) ; #DEBUG_LINE_NO:2039
  ElseIf num == 4 ; #DEBUG_LINE_NO:2040
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_04", "") ; #DEBUG_LINE_NO:2041
    Debug.notification(msg) ; #DEBUG_LINE_NO:2042
  ElseIf num == 5 ; #DEBUG_LINE_NO:2043
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_05", "") ; #DEBUG_LINE_NO:2044
    Debug.notification(msg) ; #DEBUG_LINE_NO:2045
  ElseIf num == 6 ; #DEBUG_LINE_NO:2046
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_06", "") ; #DEBUG_LINE_NO:2047
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2048
  ElseIf num == 7 ; #DEBUG_LINE_NO:2049
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_07", "") ; #DEBUG_LINE_NO:2050
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2051
  ElseIf num == 8 ; #DEBUG_LINE_NO:2052
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_08", "") ; #DEBUG_LINE_NO:2053
    Debug.notification(msg) ; #DEBUG_LINE_NO:2054
  ElseIf num == 9 ; #DEBUG_LINE_NO:2055
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_09", "") ; #DEBUG_LINE_NO:2056
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2057
  ElseIf num == 10 ; #DEBUG_LINE_NO:2058
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_10", "") ; #DEBUG_LINE_NO:2059
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2060
  ElseIf num == 11 ; #DEBUG_LINE_NO:2061
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_11", "") ; #DEBUG_LINE_NO:2062
    Debug.notification(msg) ; #DEBUG_LINE_NO:2063
  ElseIf num == 12 ; #DEBUG_LINE_NO:2064
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_12", "") ; #DEBUG_LINE_NO:2065
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2066
  ElseIf num == 13 ; #DEBUG_LINE_NO:2067
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_13", "") ; #DEBUG_LINE_NO:2068
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2069
  ElseIf num == 14 ; #DEBUG_LINE_NO:2070
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_14", "") ; #DEBUG_LINE_NO:2071
    Debug.notification(msg) ; #DEBUG_LINE_NO:2072
  ElseIf num == 15 ; #DEBUG_LINE_NO:2073
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_15", "") ; #DEBUG_LINE_NO:2074
    Debug.notification(msg) ; #DEBUG_LINE_NO:2075
  ElseIf num == 16 ; #DEBUG_LINE_NO:2076
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_16", "") ; #DEBUG_LINE_NO:2077
    Debug.notification(msg) ; #DEBUG_LINE_NO:2078
  ElseIf num == 17 ; #DEBUG_LINE_NO:2079
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_17", "") ; #DEBUG_LINE_NO:2080
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2081
  ElseIf num == 18 ; #DEBUG_LINE_NO:2082
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_18", "") ; #DEBUG_LINE_NO:2083
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2084
  ElseIf num == 19 ; #DEBUG_LINE_NO:2085
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_19", "") ; #DEBUG_LINE_NO:2086
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2087
  ElseIf num == 20 ; #DEBUG_LINE_NO:2088
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_20", "") ; #DEBUG_LINE_NO:2089
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2090
  ElseIf num == 21 ; #DEBUG_LINE_NO:2091
    msg = jsonutil.getstringvalue(file, "baboslaveryevent01_21", "") ; #DEBUG_LINE_NO:2092
    Debug.notification(msg) ; #DEBUG_LINE_NO:2093
  EndIf
EndFunction

Function RieklingSlaveryEventMessagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:2099
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_01", "") ; #DEBUG_LINE_NO:2100
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2101
  ElseIf num == 2 ; #DEBUG_LINE_NO:2102
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_02", "") ; #DEBUG_LINE_NO:2103
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2104
  ElseIf num == 3 ; #DEBUG_LINE_NO:2105
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_03", "") ; #DEBUG_LINE_NO:2106
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2107
  ElseIf num == 4 ; #DEBUG_LINE_NO:2108
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_04", "") ; #DEBUG_LINE_NO:2109
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2110
  ElseIf num == 5 ; #DEBUG_LINE_NO:2111
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_05", "") ; #DEBUG_LINE_NO:2112
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2113
  ElseIf num == 6 ; #DEBUG_LINE_NO:2114
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_06", "") ; #DEBUG_LINE_NO:2115
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2116
  ElseIf num == 7 ; #DEBUG_LINE_NO:2117
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_07", "") ; #DEBUG_LINE_NO:2118
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2119
  ElseIf num == 8 ; #DEBUG_LINE_NO:2120
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_08", "") ; #DEBUG_LINE_NO:2121
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2122
  ElseIf num == 9 ; #DEBUG_LINE_NO:2123
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_09", "") ; #DEBUG_LINE_NO:2124
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2125
  ElseIf num == 10 ; #DEBUG_LINE_NO:2126
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_10", "") ; #DEBUG_LINE_NO:2127
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2128
  ElseIf num == 11 ; #DEBUG_LINE_NO:2129
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_11", "") ; #DEBUG_LINE_NO:2130
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2131
  ElseIf num == 12 ; #DEBUG_LINE_NO:2132
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_12", "") ; #DEBUG_LINE_NO:2133
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2134
  ElseIf num == 13 ; #DEBUG_LINE_NO:2135
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_13", "") ; #DEBUG_LINE_NO:2136
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2137
  ElseIf num == 14 ; #DEBUG_LINE_NO:2138
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_14", "") ; #DEBUG_LINE_NO:2139
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2140
  ElseIf num == 15 ; #DEBUG_LINE_NO:2141
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_15", "") ; #DEBUG_LINE_NO:2142
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2143
  ElseIf num == 16 ; #DEBUG_LINE_NO:2144
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_16", "") ; #DEBUG_LINE_NO:2145
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2146
  ElseIf num == 17 ; #DEBUG_LINE_NO:2147
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_17", "") ; #DEBUG_LINE_NO:2148
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2149
  ElseIf num == 18 ; #DEBUG_LINE_NO:2150
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_18", "") ; #DEBUG_LINE_NO:2151
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2152
  ElseIf num == 19 ; #DEBUG_LINE_NO:2153
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_19", "") ; #DEBUG_LINE_NO:2154
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2155
  ElseIf num == 20 ; #DEBUG_LINE_NO:2156
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_20", "") ; #DEBUG_LINE_NO:2157
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2158
  ElseIf num == 21 ; #DEBUG_LINE_NO:2159
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_21", "") ; #DEBUG_LINE_NO:2160
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2161
  ElseIf num == 22 ; #DEBUG_LINE_NO:2162
    msg = jsonutil.getstringvalue(file, "baboslaveryevent_riekling_22", "") ; #DEBUG_LINE_NO:2163
    Debug.messagebox(msg) ; #DEBUG_LINE_NO:2164
  EndIf
EndFunction

Function HiddenPocketMessagebox(Int num)
  String msg
  If num == 1 ; #DEBUG_LINE_NO:2170
    msg = jsonutil.getstringvalue(file, "babohiddenpocket_01", "") ; #DEBUG_LINE_NO:2171
    Debug.notification(msg) ; #DEBUG_LINE_NO:2172
  ElseIf num == 2 ; #DEBUG_LINE_NO:2173
    msg = jsonutil.getstringvalue(file, "babohiddenpocket_02", "") ; #DEBUG_LINE_NO:2174
    Debug.notification(msg) ; #DEBUG_LINE_NO:2175
  ElseIf num == 3 ; #DEBUG_LINE_NO:2176
    msg = jsonutil.getstringvalue(file, "babohiddenpocket_03", "") ; #DEBUG_LINE_NO:2177
    Debug.notification(msg) ; #DEBUG_LINE_NO:2178
  EndIf
EndFunction

Function Test()
  jsonutil.SetStringValue(file, "BaboChangeLocationEvent0301", "TestTest") ; #DEBUG_LINE_NO:2183
EndFunction

Int Function IdentifySex(Actor ActorRef)
  Int Sex = ActorRef.getactorbase().getsex() ; #DEBUG_LINE_NO:2190
  Return Sex ; #DEBUG_LINE_NO:2191
EndFunction

Bool Function RemoveHeelEffect(Actor ActorRef)
  IsFemale = Self.IdentifySex(ActorRef) as Bool ; #DEBUG_LINE_NO:2195
  If IsFemale && ActorRef.GetWornForm(128) as Bool ; #DEBUG_LINE_NO:2196
    If nioverride.HasNodeTransformPosition(ActorRef as ObjectReference, False, True, "NPC", "internal") ; #DEBUG_LINE_NO:2198
      Float[] pos = nioverride.GetNodeTransformPosition(ActorRef as ObjectReference, False, IsFemale, "NPC", "internal") ; #DEBUG_LINE_NO:2199
      pos[0] = -pos[0] ; #DEBUG_LINE_NO:2200
      pos[1] = -pos[1] ; #DEBUG_LINE_NO:2201
      pos[2] = -pos[2] ; #DEBUG_LINE_NO:2202
      nioverride.AddNodeTransformPosition(ActorRef as ObjectReference, False, IsFemale, "NPC", "BaboInteractiveDia.esp", pos) ; #DEBUG_LINE_NO:2203
      nioverride.UpdateNodeTransform(ActorRef as ObjectReference, False, IsFemale, "NPC") ; #DEBUG_LINE_NO:2204
      Return True ; #DEBUG_LINE_NO:2205
    EndIf
  EndIf
  Return False ; #DEBUG_LINE_NO:2208
EndFunction

Function ResetHeelEffect(Actor ActorRef)
  If nioverride.RemoveNodeTransformPosition(ActorRef as ObjectReference, False, IsFemale, "NPC", "BaboInteractiveDia.esp") ; #DEBUG_LINE_NO:2212
    nioverride.UpdateNodeTransform(ActorRef as ObjectReference, False, IsFemale, "NPC") ; #DEBUG_LINE_NO:2213
  EndIf
EndFunction

Function SingleMotion(Actor akactor, ObjectReference akvehicle, String animstring, Bool animate, Bool OverridePackage)
  If animate ; #DEBUG_LINE_NO:2223
    Self.PrecisionCheck(akactor, True) ; #DEBUG_LINE_NO:2224
    If OverridePackage ; #DEBUG_LINE_NO:2225
      actorutil.AddPackageOverride(akactor, BaboDoNothing, 100, 1) ; #DEBUG_LINE_NO:2226
      akactor.EvaluatePackage() ; #DEBUG_LINE_NO:2227
    EndIf
    If akactor == PlayerRef ; #DEBUG_LINE_NO:2229
      Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:2230
      If Game.GetCameraState() == 0 ; #DEBUG_LINE_NO:2231
        Game.ForceThirdPerson() ; #DEBUG_LINE_NO:2232
      EndIf
    Else
      akactor.SetRestrained(True) ; #DEBUG_LINE_NO:2235
    EndIf
    If akvehicle ; #DEBUG_LINE_NO:2238
      akactor.moveto(akvehicle, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:2239
      akactor.SetVehicle(akvehicle) ; #DEBUG_LINE_NO:2240
    EndIf
    Debug.SendAnimationEvent(akactor as ObjectReference, animstring) ; #DEBUG_LINE_NO:2242
  Else
    akactor.SetVehicle(None) ; #DEBUG_LINE_NO:2244
    akactor.SetRestrained(False) ; #DEBUG_LINE_NO:2245
    actorutil.RemovePackageOverride(akactor, BaboDoNothing) ; #DEBUG_LINE_NO:2246
    Debug.SendAnimationEvent(akactor as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:2248
  EndIf
EndFunction

Function PairedMotionCreature(Actor akactor1, Actor akactor2, Int num, String creaturerace, Bool animate, Bool OverridePackage)
  String idleAkactor2
  String idleAkactor1
  If animate ; #DEBUG_LINE_NO:2256
    Int Yaxis
    Int Xaxis
    Int angle
    Self.PrecisionCheck(akactor1, True) ; #DEBUG_LINE_NO:2257
    Self.PrecisionCheck(akactor2, True) ; #DEBUG_LINE_NO:2258
    akactor1.addtofaction(BaboNPCAnimating) ; #DEBUG_LINE_NO:2262
    akactor2.addtofaction(BaboNPCAnimating) ; #DEBUG_LINE_NO:2263
    If OverridePackage ; #DEBUG_LINE_NO:2264
      actorutil.AddPackageOverride(akactor1, BaboDoNothing, 100, 1) ; #DEBUG_LINE_NO:2265
      actorutil.AddPackageOverride(akactor2, BaboDoNothing, 100, 1) ; #DEBUG_LINE_NO:2266
      akactor1.EvaluatePackage() ; #DEBUG_LINE_NO:2267
      akactor2.EvaluatePackage() ; #DEBUG_LINE_NO:2268
    EndIf
    If akactor1 == PlayerRef ; #DEBUG_LINE_NO:2271
      Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:2272
      If Game.GetCameraState() == 0 ; #DEBUG_LINE_NO:2273
        Game.ForceThirdPerson() ; #DEBUG_LINE_NO:2274
      EndIf
    EndIf
    If akactor2 == PlayerRef ; #DEBUG_LINE_NO:2280
      Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:2281
      If Game.GetCameraState() == 0 ; #DEBUG_LINE_NO:2282
        Game.ForceThirdPerson() ; #DEBUG_LINE_NO:2283
      EndIf
    EndIf
    If creaturerace == "horse" ; #DEBUG_LINE_NO:2290
      If num == 1 ; #DEBUG_LINE_NO:2291
        idleAkactor1 = "SoothingHorseFront" ; #DEBUG_LINE_NO:2292
        idleAkactor2 = "BaboSoothingHorseFront" ; #DEBUG_LINE_NO:2293
        angle = 180 ; #DEBUG_LINE_NO:2294
        Xaxis = 0 ; #DEBUG_LINE_NO:2295
        Yaxis = 140 ; #DEBUG_LINE_NO:2296
      ElseIf num == 2 ; #DEBUG_LINE_NO:2297
        idleAkactor1 = "SoothingHorseFlank" ; #DEBUG_LINE_NO:2298
        idleAkactor2 = "BaboSoothingHorseFlank" ; #DEBUG_LINE_NO:2299
        angle = -90 ; #DEBUG_LINE_NO:2300
        Xaxis = 0 ; #DEBUG_LINE_NO:2301
        Yaxis = 60 ; #DEBUG_LINE_NO:2302
      ElseIf num == 3 ; #DEBUG_LINE_NO:2303
        idleAkactor1 = "SoothingHorseFrontFail" ; #DEBUG_LINE_NO:2304
        idleAkactor2 = "BaboSoothingHorseFrontFail" ; #DEBUG_LINE_NO:2305
        angle = 180 ; #DEBUG_LINE_NO:2306
        Xaxis = 0 ; #DEBUG_LINE_NO:2307
        Yaxis = 140 ; #DEBUG_LINE_NO:2308
      ElseIf num == 4 ; #DEBUG_LINE_NO:2309
        idleAkactor1 = "SoothingHorseFlankFail" ; #DEBUG_LINE_NO:2310
        idleAkactor2 = "BaboSoothingHorseFlankFail" ; #DEBUG_LINE_NO:2311
        angle = -90 ; #DEBUG_LINE_NO:2312
        Xaxis = 0 ; #DEBUG_LINE_NO:2313
        Yaxis = 60 ; #DEBUG_LINE_NO:2314
      EndIf
    ElseIf creaturerace == "canine" ; #DEBUG_LINE_NO:2316
      If num == 1 ; #DEBUG_LINE_NO:2317
        idleAkactor1 = "SoothingCanineFlank" ; #DEBUG_LINE_NO:2318
        idleAkactor2 = "BaboSoothingCanineFlank" ; #DEBUG_LINE_NO:2319
        angle = -90 ; #DEBUG_LINE_NO:2330
        Xaxis = 0 ; #DEBUG_LINE_NO:2331
        Yaxis = 50 ; #DEBUG_LINE_NO:2332
      ElseIf num == 2 ; #DEBUG_LINE_NO:2333
        idleAkactor1 = "SoothingCanineFlankFail" ; #DEBUG_LINE_NO:2334
        idleAkactor2 = "BaboSoothingCanineFlankFail" ; #DEBUG_LINE_NO:2335
        angle = -90 ; #DEBUG_LINE_NO:2336
        Xaxis = 0 ; #DEBUG_LINE_NO:2337
        Yaxis = 50 ; #DEBUG_LINE_NO:2338
      ElseIf num == 3 ; #DEBUG_LINE_NO:2339
        idleAkactor1 = "MountCanineFlank" ; #DEBUG_LINE_NO:2340
        idleAkactor2 = "BaboMountCanineFlank" ; #DEBUG_LINE_NO:2341
        angle = -90 ; #DEBUG_LINE_NO:2342
        Xaxis = 100 ; #DEBUG_LINE_NO:2343
        Yaxis = 0 ; #DEBUG_LINE_NO:2344
      EndIf
    EndIf
    BaboPosPCRef.moveto(akactor2 as ObjectReference, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:2348
    Utility.Wait(0.5) ; #DEBUG_LINE_NO:2350
    Float AngleZ = akactor2.GetAngleZ() ; #DEBUG_LINE_NO:2351
    Float rMoveX = (Math.sin(AngleZ) * Yaxis as Float) + (Math.cos(AngleZ) * Xaxis as Float) ; #DEBUG_LINE_NO:2352
    Float rMoveY = (Math.cos(AngleZ) * Yaxis as Float) - (Math.sin(AngleZ) * Xaxis as Float) ; #DEBUG_LINE_NO:2353
    BaboPosNPCRef.moveto(akactor2 as ObjectReference, rMoveX, rMoveY, 0.0, True) ; #DEBUG_LINE_NO:2355
    Utility.Wait(0.5) ; #DEBUG_LINE_NO:2356
    akactor1.moveto(BaboPosNPCRef, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:2357
    akactor1.SetAngle(0 as Float, 0 as Float, AngleZ + angle as Float) ; #DEBUG_LINE_NO:2358
    Utility.Wait(1.0) ; #DEBUG_LINE_NO:2359
    akactor1.SetVehicle(BaboPosNPCRef) ; #DEBUG_LINE_NO:2360
    akactor2.SetVehicle(BaboPosPCRef) ; #DEBUG_LINE_NO:2361
    Debug.SendAnimationEvent(akactor1 as ObjectReference, idleAkactor1) ; #DEBUG_LINE_NO:2362
    Debug.SendAnimationEvent(akactor2 as ObjectReference, idleAkactor2) ; #DEBUG_LINE_NO:2363
  Else
    idleAkactor1 = None ; #DEBUG_LINE_NO:2366
    idleAkactor2 = None ; #DEBUG_LINE_NO:2367
    If akactor1 == PlayerRef ; #DEBUG_LINE_NO:2368
      Game.SetPlayerAIDriven(False) ; #DEBUG_LINE_NO:2369
      Debug.SendAnimationEvent(akactor1 as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:2370
    Else
      akactor1.SetDontMove(False) ; #DEBUG_LINE_NO:2372
      akactor1.SetRestrained(False) ; #DEBUG_LINE_NO:2373
      Debug.SendAnimationEvent(akactor2 as ObjectReference, "ReturntoDefault") ; #DEBUG_LINE_NO:2374
    EndIf
    If akactor2 == PlayerRef ; #DEBUG_LINE_NO:2376
      Game.SetPlayerAIDriven(False) ; #DEBUG_LINE_NO:2377
      Debug.SendAnimationEvent(akactor2 as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:2378
    Else
      akactor2.SetDontMove(False) ; #DEBUG_LINE_NO:2380
      akactor2.SetRestrained(False) ; #DEBUG_LINE_NO:2381
      Debug.SendAnimationEvent(akactor1 as ObjectReference, "ReturntoDefault") ; #DEBUG_LINE_NO:2382
    EndIf
    akactor1.removefromfaction(BaboNPCAnimating) ; #DEBUG_LINE_NO:2384
    akactor2.removefromfaction(BaboNPCAnimating) ; #DEBUG_LINE_NO:2385
    akactor1.SetVehicle(None) ; #DEBUG_LINE_NO:2386
    akactor2.SetVehicle(None) ; #DEBUG_LINE_NO:2387
    If OverridePackage ; #DEBUG_LINE_NO:2388
      actorutil.RemovePackageOverride(akactor1, BaboDoNothing) ; #DEBUG_LINE_NO:2389
      actorutil.RemovePackageOverride(akactor2, BaboDoNothing) ; #DEBUG_LINE_NO:2390
      akactor1.EvaluatePackage() ; #DEBUG_LINE_NO:2391
      akactor2.EvaluatePackage() ; #DEBUG_LINE_NO:2392
    EndIf
    Self.PrecisionCheck(akactor1, False) ; #DEBUG_LINE_NO:2395
    Self.PrecisionCheck(akactor2, False) ; #DEBUG_LINE_NO:2396
  EndIf
EndFunction

Function PivotalMove(Actor akactor, ObjectReference PivotPoint, String akrace, Int Xaxis, Int Yaxis, Int angle, String animstring, Bool animate, Bool OverridePackage)
  If animate ; #DEBUG_LINE_NO:2402
    Self.PrecisionCheck(akactor, True) ; #DEBUG_LINE_NO:2403
    akactor.addtofaction(BaboNPCAnimating) ; #DEBUG_LINE_NO:2404
    If OverridePackage ; #DEBUG_LINE_NO:2405
      actorutil.AddPackageOverride(akactor, BaboDoNothing, 100, 1) ; #DEBUG_LINE_NO:2406
      akactor.EvaluatePackage() ; #DEBUG_LINE_NO:2407
    EndIf
    Utility.Wait(0.5) ; #DEBUG_LINE_NO:2410
    Float AngleZ = PivotPoint.GetAngleZ() ; #DEBUG_LINE_NO:2411
    Float rMoveX = (Math.sin(AngleZ) * Yaxis as Float) + (Math.cos(AngleZ) * Xaxis as Float) ; #DEBUG_LINE_NO:2412
    Float rMoveY = (Math.cos(AngleZ) * Yaxis as Float) - (Math.sin(AngleZ) * Xaxis as Float) ; #DEBUG_LINE_NO:2413
    BaboPosNPCRef.moveto(PivotPoint, rMoveX, rMoveY, 0.0, True) ; #DEBUG_LINE_NO:2415
    Utility.Wait(0.5) ; #DEBUG_LINE_NO:2416
    akactor.moveto(BaboPosNPCRef, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:2417
    akactor.SetAngle(0 as Float, 0 as Float, AngleZ + angle as Float) ; #DEBUG_LINE_NO:2418
    Utility.Wait(1.0) ; #DEBUG_LINE_NO:2419
    akactor.SetVehicle(BaboPosNPCRef) ; #DEBUG_LINE_NO:2420
    Debug.SendAnimationEvent(akactor as ObjectReference, animstring) ; #DEBUG_LINE_NO:2421
  Else
    akactor.SetDontMove(False) ; #DEBUG_LINE_NO:2423
    akactor.SetRestrained(False) ; #DEBUG_LINE_NO:2424
    If akrace == "Riekling" ; #DEBUG_LINE_NO:2425
      Debug.SendAnimationEvent(akactor as ObjectReference, "ReturntoDefault") ; #DEBUG_LINE_NO:2426
    Else
      Debug.SendAnimationEvent(akactor as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:2428
    EndIf
    akactor.removefromfaction(BaboNPCAnimating) ; #DEBUG_LINE_NO:2430
    akactor.SetVehicle(None) ; #DEBUG_LINE_NO:2431
    If OverridePackage ; #DEBUG_LINE_NO:2433
      actorutil.RemovePackageOverride(akactor, BaboDoNothing) ; #DEBUG_LINE_NO:2434
      akactor.EvaluatePackage() ; #DEBUG_LINE_NO:2435
    EndIf
    Self.PrecisionCheck(akactor, False) ; #DEBUG_LINE_NO:2437
  EndIf
EndFunction

Function CreaturePairedAnimSequence(Actor akactor1, Actor akactor2, Int num, String creaturerace, String idleAkactor1, String idleAkactor2)
  Int Yaxis
  Int Xaxis
  Int angle
  If creaturerace == "canine" ; #DEBUG_LINE_NO:2445
    If num == 3 ; #DEBUG_LINE_NO:2446
      angle = -90 ; #DEBUG_LINE_NO:2447
      Xaxis = 100 ; #DEBUG_LINE_NO:2448
      Yaxis = 0 ; #DEBUG_LINE_NO:2449
    EndIf
  EndIf
  BaboPosPCRef.moveto(akactor2 as ObjectReference, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:2452
  Utility.Wait(0.5) ; #DEBUG_LINE_NO:2454
  Float AngleZ = akactor2.GetAngleZ() ; #DEBUG_LINE_NO:2455
  Float rMoveX = (Math.sin(AngleZ) * Yaxis as Float) + (Math.cos(AngleZ) * Xaxis as Float) ; #DEBUG_LINE_NO:2456
  Float rMoveY = (Math.cos(AngleZ) * Yaxis as Float) - (Math.sin(AngleZ) * Xaxis as Float) ; #DEBUG_LINE_NO:2457
  BaboPosNPCRef.moveto(akactor2 as ObjectReference, rMoveX, rMoveY, 0.0, True) ; #DEBUG_LINE_NO:2459
  Utility.Wait(0.5) ; #DEBUG_LINE_NO:2460
  akactor1.moveto(BaboPosNPCRef, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:2461
  akactor1.SetAngle(0 as Float, 0 as Float, AngleZ + angle as Float) ; #DEBUG_LINE_NO:2462
  Utility.Wait(1.0) ; #DEBUG_LINE_NO:2463
  akactor1.SetVehicle(BaboPosNPCRef) ; #DEBUG_LINE_NO:2464
  akactor2.SetVehicle(BaboPosPCRef) ; #DEBUG_LINE_NO:2465
  Debug.SendAnimationEvent(akactor1 as ObjectReference, idleAkactor1) ; #DEBUG_LINE_NO:2466
  Debug.SendAnimationEvent(akactor2 as ObjectReference, idleAkactor2) ; #DEBUG_LINE_NO:2467
EndFunction

Function PairedMotionNPC(Actor akactor1, Actor akactor2, Int num, Bool animate)
  String idleAkactor2
  String idleAkactor1
  If animate ; #DEBUG_LINE_NO:2474
    If num == 1 ; #DEBUG_LINE_NO:2475
      idleAkactor1 = "Babo_Flirt_A01" ; #DEBUG_LINE_NO:2476
      idleAkactor2 = "Babo_Flirt_A02D" ; #DEBUG_LINE_NO:2477
    ElseIf num == 2 ; #DEBUG_LINE_NO:2478
      idleAkactor1 = "Babo_FlirtBreast_A01" ; #DEBUG_LINE_NO:2479
      idleAkactor2 = "Babo_FlirtBreast_A02" ; #DEBUG_LINE_NO:2480
    ElseIf num == 3 ; #DEBUG_LINE_NO:2481
      idleAkactor1 = "Babo_FlirtPussy_A01" ; #DEBUG_LINE_NO:2482
      idleAkactor2 = "Babo_FlirtPussy_A02" ; #DEBUG_LINE_NO:2483
    ElseIf num == 4 ; #DEBUG_LINE_NO:2484
      idleAkactor1 = "Babo_FlirtFace_A01" ; #DEBUG_LINE_NO:2485
      idleAkactor2 = "Babo_FlirtFace_A02" ; #DEBUG_LINE_NO:2486
    ElseIf num == 5 ; #DEBUG_LINE_NO:2487
      idleAkactor1 = "Babo_FlirtFaceEnd_A01" ; #DEBUG_LINE_NO:2488
      idleAkactor2 = "Babo_FlirtFaceEnd_A02" ; #DEBUG_LINE_NO:2489
    ElseIf num == 6 ; #DEBUG_LINE_NO:2490
      idleAkactor1 = "Babo_Captured_A1" ; #DEBUG_LINE_NO:2491
      idleAkactor2 = "Babo_Captured_A2" ; #DEBUG_LINE_NO:2492
    ElseIf num == 7 ; #DEBUG_LINE_NO:2493
      idleAkactor1 = "Babo_CapturedBoob_A1" ; #DEBUG_LINE_NO:2494
      idleAkactor2 = "Babo_CapturedBoob_A2" ; #DEBUG_LINE_NO:2495
    ElseIf num == 8 ; #DEBUG_LINE_NO:2496
      idleAkactor1 = "Babo_CapturedPussy_A1" ; #DEBUG_LINE_NO:2497
      idleAkactor2 = "Babo_CapturedPussy_A2" ; #DEBUG_LINE_NO:2498
    EndIf
  Else
    idleAkactor1 = None ; #DEBUG_LINE_NO:2501
    idleAkactor2 = None ; #DEBUG_LINE_NO:2502
  EndIf
  Self.NPCPairedAnim(akactor1, akactor2, animate, idleAkactor1, idleAkactor2) ; #DEBUG_LINE_NO:2505
EndFunction

Function EventPairMotion(Actor akactor, Int angle, Int Xaxis, Int Yaxis, Int MotionType, Bool OverridePackage)
  If MotionType > 0 ; #DEBUG_LINE_NO:2510
    Self.PrecisionCheck(akactor, True) ; #DEBUG_LINE_NO:2511
    Self.PrecisionCheck(PlayerRef, True) ; #DEBUG_LINE_NO:2512
  EndIf
  If OverridePackage ; #DEBUG_LINE_NO:2514
    actorutil.AddPackageOverride(akactor, BaboDoNothing, 100, 1) ; #DEBUG_LINE_NO:2515
    akactor.EvaluatePackage() ; #DEBUG_LINE_NO:2516
  EndIf
  akactor.SetRestrained(True) ; #DEBUG_LINE_NO:2518
  akactor.SetDontMove(True) ; #DEBUG_LINE_NO:2519
  Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:2522
  If Game.GetCameraState() == 0 ; #DEBUG_LINE_NO:2523
    Game.ForceThirdPerson() ; #DEBUG_LINE_NO:2524
  EndIf
  If MotionType == 1 ; #DEBUG_LINE_NO:2527
    angle = 180 ; #DEBUG_LINE_NO:2528
    Xaxis = 13 ; #DEBUG_LINE_NO:2529
    Yaxis = 21 ; #DEBUG_LINE_NO:2530
  ElseIf MotionType == 2 ; #DEBUG_LINE_NO:2531
    angle = 180 ; #DEBUG_LINE_NO:2532
    Xaxis = 16 ; #DEBUG_LINE_NO:2533
    Yaxis = 28 ; #DEBUG_LINE_NO:2534
  ElseIf MotionType == 3 ; #DEBUG_LINE_NO:2535
    angle = 180 ; #DEBUG_LINE_NO:2536
    Xaxis = 16 ; #DEBUG_LINE_NO:2537
    Yaxis = 28 ; #DEBUG_LINE_NO:2538
  ElseIf MotionType == 4 ; #DEBUG_LINE_NO:2539
    angle = 180 ; #DEBUG_LINE_NO:2540
    Xaxis = 0 ; #DEBUG_LINE_NO:2541
    Yaxis = 90 ; #DEBUG_LINE_NO:2542
  ElseIf MotionType == 5 ; #DEBUG_LINE_NO:2543
    angle = 180 ; #DEBUG_LINE_NO:2544
    Xaxis = 0 ; #DEBUG_LINE_NO:2545
    Yaxis = 90 ; #DEBUG_LINE_NO:2546
  ElseIf MotionType == 6 ; #DEBUG_LINE_NO:2547
    angle = 0 ; #DEBUG_LINE_NO:2548
    Xaxis = -40 ; #DEBUG_LINE_NO:2549
    Yaxis = -20 ; #DEBUG_LINE_NO:2550
  ElseIf MotionType == 7 ; #DEBUG_LINE_NO:2551
    angle = 180 ; #DEBUG_LINE_NO:2552
    Xaxis = 0 ; #DEBUG_LINE_NO:2553
    Yaxis = 50 ; #DEBUG_LINE_NO:2554
  EndIf
  Utility.Wait(0.5) ; #DEBUG_LINE_NO:2557
  Float AngleZ = PlayerRef.GetAngleZ() ; #DEBUG_LINE_NO:2558
  Float rMoveX = (Math.sin(AngleZ) * Yaxis as Float) + (Math.cos(AngleZ) * Xaxis as Float) ; #DEBUG_LINE_NO:2559
  Float rMoveY = (Math.cos(AngleZ) * Yaxis as Float) - (Math.sin(AngleZ) * Xaxis as Float) ; #DEBUG_LINE_NO:2560
  BaboPosNPCRef.moveto(PlayerRef as ObjectReference, rMoveX, rMoveY, 0.0, True) ; #DEBUG_LINE_NO:2562
  Utility.Wait(0.5) ; #DEBUG_LINE_NO:2564
  akactor.moveto(BaboPosNPCRef, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:2565
  akactor.SetAngle(0 as Float, 0 as Float, AngleZ + angle as Float) ; #DEBUG_LINE_NO:2566
  Utility.Wait(0.5) ; #DEBUG_LINE_NO:2567
  If MotionType == 1 ; #DEBUG_LINE_NO:2570
    Debug.SendAnimationEvent(akactor as ObjectReference, "BaboWombHitM") ; #DEBUG_LINE_NO:2571
    Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboWombHit") ; #DEBUG_LINE_NO:2572
    Utility.Wait(1.0) ; #DEBUG_LINE_NO:2573
    Self.MiscSound(akactor as ObjectReference, 1) ; #DEBUG_LINE_NO:2574
    Self.UseSexlabVoice(PlayerRef, True) ; #DEBUG_LINE_NO:2575
    Utility.Wait(2.0) ; #DEBUG_LINE_NO:2576
    Self.UseSexlabVoice(PlayerRef, True) ; #DEBUG_LINE_NO:2577
    akactor.SetRestrained(False) ; #DEBUG_LINE_NO:2578
    akactor.SetDontMove(False) ; #DEBUG_LINE_NO:2579
    PlayerRef.DamageActorValue("Health", 60.0) ; #DEBUG_LINE_NO:2580
    Utility.Wait(1.0) ; #DEBUG_LINE_NO:2581
    Self.UseSexlabVoice(PlayerRef, True) ; #DEBUG_LINE_NO:2582
    Self.PrecisionCheck(akactor, False) ; #DEBUG_LINE_NO:2583
    Self.PrecisionCheck(PlayerRef, False) ; #DEBUG_LINE_NO:2584
  ElseIf MotionType == 2 ; #DEBUG_LINE_NO:2585
    Debug.SendAnimationEvent(akactor as ObjectReference, "BaboRopeHitM") ; #DEBUG_LINE_NO:2586
    Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboRopeHit") ; #DEBUG_LINE_NO:2587
    Utility.Wait(1.299999952) ; #DEBUG_LINE_NO:2588
    Self.MiscSound(akactor as ObjectReference, 1) ; #DEBUG_LINE_NO:2589
    PlayerRef.DamageActorValue("Health", 80.0) ; #DEBUG_LINE_NO:2590
    Self.UseSexlabVoice(PlayerRef, True) ; #DEBUG_LINE_NO:2591
    akactor.SetRestrained(False) ; #DEBUG_LINE_NO:2592
    akactor.SetDontMove(False) ; #DEBUG_LINE_NO:2593
    Utility.Wait(1.0) ; #DEBUG_LINE_NO:2594
    Self.UseSexlabVoice(PlayerRef, True) ; #DEBUG_LINE_NO:2595
    Self.PrecisionCheck(akactor, False) ; #DEBUG_LINE_NO:2596
    Self.PrecisionCheck(PlayerRef, False) ; #DEBUG_LINE_NO:2597
  ElseIf MotionType == 3 ; #DEBUG_LINE_NO:2598
    Debug.SendAnimationEvent(akactor as ObjectReference, "BaboRopePreHitM") ; #DEBUG_LINE_NO:2599
    Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboRopePreHit") ; #DEBUG_LINE_NO:2600
  ElseIf MotionType == 4 ; #DEBUG_LINE_NO:2601
    Debug.SendAnimationEvent(akactor as ObjectReference, "BaboCrouchM") ; #DEBUG_LINE_NO:2602
    Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboFaintF") ; #DEBUG_LINE_NO:2603
    Utility.Wait(1.299999952) ; #DEBUG_LINE_NO:2604
    Self.UseSexlabVoice(PlayerRef, True) ; #DEBUG_LINE_NO:2605
    akactor.SetRestrained(False) ; #DEBUG_LINE_NO:2606
    akactor.SetDontMove(False) ; #DEBUG_LINE_NO:2607
    Self.PrecisionCheck(akactor, False) ; #DEBUG_LINE_NO:2608
    Self.PrecisionCheck(PlayerRef, False) ; #DEBUG_LINE_NO:2609
  ElseIf MotionType == 5 ; #DEBUG_LINE_NO:2610
    Debug.SendAnimationEvent(akactor as ObjectReference, "BaboCrouchM_S") ; #DEBUG_LINE_NO:2611
    Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboFaintF_S") ; #DEBUG_LINE_NO:2612
    Utility.Wait(1.299999952) ; #DEBUG_LINE_NO:2613
    Self.UseSexlabVoice(PlayerRef, True) ; #DEBUG_LINE_NO:2614
    Utility.Wait(3.0) ; #DEBUG_LINE_NO:2615
    Self.UseSexlabVoice(PlayerRef, True) ; #DEBUG_LINE_NO:2616
  ElseIf MotionType == 6 ; #DEBUG_LINE_NO:2617
    Debug.SendAnimationEvent(akactor as ObjectReference, "BaboHoldArmM") ; #DEBUG_LINE_NO:2618
    Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboHoldArmF") ; #DEBUG_LINE_NO:2619
    Utility.Wait(1.299999952) ; #DEBUG_LINE_NO:2620
    Self.UseSexlabVoice(PlayerRef, True) ; #DEBUG_LINE_NO:2621
  ElseIf MotionType == 7 ; #DEBUG_LINE_NO:2622
    Debug.SendAnimationEvent(akactor as ObjectReference, "BaboFrontHugStartM") ; #DEBUG_LINE_NO:2623
    Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboFrontHugStartF") ; #DEBUG_LINE_NO:2624
  Else
    Debug.SendAnimationEvent(akactor as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:2628
    akactor.SetRestrained(False) ; #DEBUG_LINE_NO:2629
    akactor.SetDontMove(False) ; #DEBUG_LINE_NO:2630
    Game.SetPlayerAIDriven(False) ; #DEBUG_LINE_NO:2631
    Self.PrecisionCheck(akactor, False) ; #DEBUG_LINE_NO:2632
    Self.PrecisionCheck(PlayerRef, False) ; #DEBUG_LINE_NO:2633
  EndIf
  If OverridePackage ; #DEBUG_LINE_NO:2635
    actorutil.RemovePackageOverride(akactor, BaboDoNothing) ; #DEBUG_LINE_NO:2636
    akactor.EvaluatePackage() ; #DEBUG_LINE_NO:2637
  EndIf
EndFunction

Function NPCPairedAnim(Actor Victim, Actor Aggressor, Bool animate = True, String VictimAnim, String AggressorAnim)
  If animate ; #DEBUG_LINE_NO:2643
    Self.PrecisionCheck(Aggressor, True) ; #DEBUG_LINE_NO:2644
    Self.PrecisionCheck(Victim, True) ; #DEBUG_LINE_NO:2645
    actorutil.AddPackageOverride(Aggressor, BaboDoNothing, 100, 1) ; #DEBUG_LINE_NO:2646
    Aggressor.EvaluatePackage() ; #DEBUG_LINE_NO:2647
    Aggressor.SetRestrained(True) ; #DEBUG_LINE_NO:2648
    Aggressor.SetDontMove(True) ; #DEBUG_LINE_NO:2649
    actorutil.AddPackageOverride(Victim, BaboDoNothing, 100, 1) ; #DEBUG_LINE_NO:2651
    Victim.EvaluatePackage() ; #DEBUG_LINE_NO:2652
    Victim.SetRestrained(True) ; #DEBUG_LINE_NO:2653
    Victim.SetDontMove(True) ; #DEBUG_LINE_NO:2654
    BaboPosNPCRef.moveto(Aggressor as ObjectReference, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:2656
    Float AngleZ = Victim.GetAngleZ() ; #DEBUG_LINE_NO:2657
    Aggressor.moveto(Victim as ObjectReference, 0.0 * Math.sin(AngleZ), 0.0 * Math.cos(AngleZ), 0.0, True) ; #DEBUG_LINE_NO:2658
    Victim.SetVehicle(BaboPosNPCRef) ; #DEBUG_LINE_NO:2659
    Aggressor.SetVehicle(BaboPosNPCRef) ; #DEBUG_LINE_NO:2660
    If !Victim.isinfaction(BaboNPCAnimating) && !Aggressor.isinfaction(BaboNPCAnimating) ; #DEBUG_LINE_NO:2661
      Debug.SendAnimationEvent(Aggressor as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:2662
      Debug.SendAnimationEvent(Victim as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:2663
    EndIf
    Utility.Wait(1.0) ; #DEBUG_LINE_NO:2665
    Aggressor.moveto(Victim as ObjectReference, 0.0 * Math.sin(AngleZ), 0.0 * Math.cos(AngleZ), 0.0, True) ; #DEBUG_LINE_NO:2666
    Debug.SendAnimationEvent(Victim as ObjectReference, VictimAnim) ; #DEBUG_LINE_NO:2667
    Debug.SendAnimationEvent(Aggressor as ObjectReference, AggressorAnim) ; #DEBUG_LINE_NO:2668
    Victim.addtofaction(BaboNPCAnimating) ; #DEBUG_LINE_NO:2671
    Aggressor.addtofaction(BaboNPCAnimating) ; #DEBUG_LINE_NO:2672
  Else
    Victim.SetVehicle(None) ; #DEBUG_LINE_NO:2674
    Aggressor.SetVehicle(None) ; #DEBUG_LINE_NO:2675
    Victim.SetRestrained(False) ; #DEBUG_LINE_NO:2676
    Victim.SetDontMove(False) ; #DEBUG_LINE_NO:2677
    Aggressor.SetRestrained(False) ; #DEBUG_LINE_NO:2678
    Aggressor.SetDontMove(False) ; #DEBUG_LINE_NO:2679
    actorutil.RemovePackageOverride(Aggressor, BaboDoNothing) ; #DEBUG_LINE_NO:2680
    actorutil.RemovePackageOverride(Victim, BaboDoNothing) ; #DEBUG_LINE_NO:2681
    If Aggressor.haskeyword(ActorTypeNPC) ; #DEBUG_LINE_NO:2683
      Debug.SendAnimationEvent(Aggressor as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:2684
    Else
      Debug.SendAnimationEvent(Aggressor as ObjectReference, "IdleStop") ; #DEBUG_LINE_NO:2686
    EndIf
    Debug.SendAnimationEvent(Victim as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:2689
    Victim.removefromfaction(BaboNPCAnimating) ; #DEBUG_LINE_NO:2690
    Aggressor.removefromfaction(BaboNPCAnimating) ; #DEBUG_LINE_NO:2691
    Self.PrecisionCheck(Aggressor, False) ; #DEBUG_LINE_NO:2692
    Self.PrecisionCheck(Victim, False) ; #DEBUG_LINE_NO:2693
  EndIf
EndFunction

Function NPCPairedAnimSequence(Actor Victim, Actor Aggressor, String VictimAnim, String AggressorAnim)
  Float AngleZ = Victim.GetAngleZ() ; #DEBUG_LINE_NO:2698
  Aggressor.moveto(Victim as ObjectReference, 0.0 * Math.sin(AngleZ), 0.0 * Math.cos(AngleZ), 0.0, True) ; #DEBUG_LINE_NO:2699
  Debug.SendAnimationEvent(Victim as ObjectReference, VictimAnim) ; #DEBUG_LINE_NO:2700
  Debug.SendAnimationEvent(Aggressor as ObjectReference, AggressorAnim) ; #DEBUG_LINE_NO:2701
EndFunction

Function SimpleAnmSequence(Actor Actor1, Actor Actor2, String actor1string, String actor2string)
  Debug.SendAnimationEvent(Actor1 as ObjectReference, actor1string) ; #DEBUG_LINE_NO:2705
  Debug.SendAnimationEvent(Actor2 as ObjectReference, actor2string) ; #DEBUG_LINE_NO:2706
EndFunction

Function SOSSize()
  If Quest.GetQuest("SOS_Misc") ; #DEBUG_LINE_NO:2716
    SOSAPIQuest = Game.GetFormFromFile(126372, "Schlongs of Skyrim.esp") as sos_api ; #DEBUG_LINE_NO:2717
    SOS_Quest = Game.GetFormFromFile(3426, "Schlongs of Skyrim.esp") as sos_setupquest_script ; #DEBUG_LINE_NO:2718
  Else
    Return  ; #DEBUG_LINE_NO:2720
  EndIf
  SOSAPIQuest.AddRace(BakaGiantOrcRace) ; #DEBUG_LINE_NO:2722
EndFunction

Function FindSOSAddon()
  If Quest.GetQuest("SOS_Addon_VectorPlexusRegular_Quest") ; #DEBUG_LINE_NO:2726
    SOS_Addon_VectorPlexusRegular_Quest = Game.GetFormFromFile(3426, "SOS - VectorPlexus Regular Addon.esp") as sos_addonquest_script ; #DEBUG_LINE_NO:2727
  EndIf
  If Quest.GetQuest("SOS_Addon_VectorPlexusMuscular_Quest") ; #DEBUG_LINE_NO:2729
    SOS_Addon_VectorPlexusMuscular_Quest = Game.GetFormFromFile(3426, "SOS - VectorPlexus Muscular Addon.esp") as sos_addonquest_script ; #DEBUG_LINE_NO:2730
  EndIf
EndFunction

Function AssignSchlong(Actor akactor, Int idSize = 6, Bool bforce = true)
  Form newAddon
  If SOS_Addon_VectorPlexusRegular_Quest ; #DEBUG_LINE_NO:2736
    newAddon = SOS_Addon_VectorPlexusRegular_Quest as Form ; #DEBUG_LINE_NO:2737
  ElseIf SOS_Addon_VectorPlexusMuscular_Quest
    newAddon = SOS_Addon_VectorPlexusMuscular_Quest as Form ; #DEBUG_LINE_NO:2739
  Else
    newAddon = sos_data.GetAddon(0) as Form ; #DEBUG_LINE_NO:2741
  EndIf
  If !newAddon ; #DEBUG_LINE_NO:2743
    Return  ; #DEBUG_LINE_NO:2744
  EndIf
  Bool addonCompatible = Self.IsSchlongCompatible(newAddon, akactor, akactor.GetLeveledActorBase().getsex()) ; #DEBUG_LINE_NO:2747
  If addonCompatible || bforce ; #DEBUG_LINE_NO:2748
    SOS_Quest.SetSchlong(akactor, newAddon, True) ; #DEBUG_LINE_NO:2749
    Self.SchlongSizeSliderAccept(akactor, idSize) ; #DEBUG_LINE_NO:2750
  EndIf
EndFunction

Function SchlongSizeSliderAccept(Actor akactor, Int size)
  Form addon = SOS_Quest.GetActiveAddon(akactor) as Form ; #DEBUG_LINE_NO:2755
  If addon ; #DEBUG_LINE_NO:2756
    SOS_Quest.SetSchlongSize(addon, akactor, size) ; #DEBUG_LINE_NO:2757
  EndIf
EndFunction

Bool Function IsSchlongCompatible(Form addon, Actor akactor, Int Sex)
  Bool addonCompatible = SOS_Quest.IsSchlongRaceCompatible(addon, akactor) && SOS_Quest.IsSchlongGenderAllowed(addon, Sex) ; #DEBUG_LINE_NO:2762
  Return addonCompatible ; #DEBUG_LINE_NO:2763
EndFunction

Function BaboEvent11ScenePlay(Int i)
  If i == 1 ; #DEBUG_LINE_NO:2773
    BaboEncounter11Scene01.forcestart() ; #DEBUG_LINE_NO:2774
  ElseIf i == 2 ; #DEBUG_LINE_NO:2775
    BaboEncounter11Scene02.forcestart() ; #DEBUG_LINE_NO:2776
  ElseIf i == 3 ; #DEBUG_LINE_NO:2777
    BaboEncounter11Scene03.forcestart() ; #DEBUG_LINE_NO:2778
  ElseIf i == 4 ; #DEBUG_LINE_NO:2779
    BaboEncounter11Scene04.forcestart() ; #DEBUG_LINE_NO:2780
  EndIf
EndFunction

Function BCLEvent05ScenePlay(Int i)
  If i == 2 ; #DEBUG_LINE_NO:2785
    BaboChangeLocationEvent05Scene02.forcestart() ; #DEBUG_LINE_NO:2786
  ElseIf i == 3 ; #DEBUG_LINE_NO:2787
    BaboChangeLocationEvent05Scene03.forcestart() ; #DEBUG_LINE_NO:2788
  ElseIf i == 4 ; #DEBUG_LINE_NO:2789
    BaboChangeLocationEvent05Scene04.forcestart() ; #DEBUG_LINE_NO:2790
  EndIf
EndFunction

Function BCLEvent06ScenePlay(Int i)
  If i == 5 ; #DEBUG_LINE_NO:2795
    BaboChangeLocationEvent06Scene05.forcestart() ; #DEBUG_LINE_NO:2796
  ElseIf i == 6 ; #DEBUG_LINE_NO:2797
    BaboChangeLocationEvent06Scene06.forcestart() ; #DEBUG_LINE_NO:2798
  EndIf
EndFunction

Function BCLEvent10ScenePlay(Int i)
  If i == 1 ; #DEBUG_LINE_NO:2803
    BaboChangeLocationEvent10Scene01.forcestart() ; #DEBUG_LINE_NO:2804
  ElseIf i == 2 ; #DEBUG_LINE_NO:2805
    BaboChangeLocationEvent10Scene02.forcestart() ; #DEBUG_LINE_NO:2806
  EndIf
EndFunction

Function BCLEvent01ScenePlay(Int i)
  If i == 1 ; #DEBUG_LINE_NO:2811
    BaboChangeLocationEvent01Scene01.forcestart() ; #DEBUG_LINE_NO:2812
  ElseIf i == 2 ; #DEBUG_LINE_NO:2813
    BaboChangeLocationEvent01Scene02.forcestart() ; #DEBUG_LINE_NO:2814
  ElseIf i == 3 ; #DEBUG_LINE_NO:2815
    BaboChangeLocationEvent01Scene03.forcestart() ; #DEBUG_LINE_NO:2816
  ElseIf i == 4 ; #DEBUG_LINE_NO:2817
    BaboChangeLocationEvent01Scene04.forcestart() ; #DEBUG_LINE_NO:2818
  ElseIf i == 5 ; #DEBUG_LINE_NO:2819
    BaboChangeLocationEvent01Scene05.forcestart() ; #DEBUG_LINE_NO:2820
  ElseIf i == 6 ; #DEBUG_LINE_NO:2821
    BaboChangeLocationEvent01Scene06.forcestart() ; #DEBUG_LINE_NO:2822
  Else
    BaboChangeLocationEvent01Scene05.stop() ; #DEBUG_LINE_NO:2824
    BaboChangeLocationEvent01Scene06.stop() ; #DEBUG_LINE_NO:2825
  EndIf
EndFunction

Function BCLEvent07ScenePlay(Int i)
  If i == 0 ; #DEBUG_LINE_NO:2830
    BaboChangeLocationEvent07Scene00.forcestart() ; #DEBUG_LINE_NO:2831
  ElseIf i == 1 ; #DEBUG_LINE_NO:2832
    BaboChangeLocationEvent07SceneWellRested.forcestart() ; #DEBUG_LINE_NO:2833
  ElseIf i == 2 ; #DEBUG_LINE_NO:2834
    BaboChangeLocationEvent07Scene04.forcestart() ; #DEBUG_LINE_NO:2835
  ElseIf i == 3 ; #DEBUG_LINE_NO:2836
    BaboChangeLocationEvent07Scene03.forcestart() ; #DEBUG_LINE_NO:2837
  ElseIf i == 4 ; #DEBUG_LINE_NO:2838
    BaboChangeLocationEvent07Scene02.forcestart() ; #DEBUG_LINE_NO:2839
  ElseIf i == 5 ; #DEBUG_LINE_NO:2840
    BaboChangeLocationEvent07Scene05.forcestart() ; #DEBUG_LINE_NO:2841
  ElseIf i == 6 ; #DEBUG_LINE_NO:2842
    BaboChangeLocationEvent07Scene06.forcestart() ; #DEBUG_LINE_NO:2843
  EndIf
EndFunction

Function BEventAnimalCareMarkarthScenePlay(Int i)
  If i == 0 ; #DEBUG_LINE_NO:2848
    BaboEventAnimalCareMarkarthSceneStart.forcestart() ; #DEBUG_LINE_NO:2849
  ElseIf i == 1 ; #DEBUG_LINE_NO:2850
    BaboEventAnimalCareMarkarthScene01.forcestart() ; #DEBUG_LINE_NO:2851
  ElseIf i == 2 ; #DEBUG_LINE_NO:2852
    BaboEventAnimalCareMarkarthScene02.forcestart() ; #DEBUG_LINE_NO:2853
  ElseIf i == 3 ; #DEBUG_LINE_NO:2854
    BaboEventAnimalCareMarkarthScene03.forcestart() ; #DEBUG_LINE_NO:2855
  ElseIf i == 4 ; #DEBUG_LINE_NO:2856
    BaboEventAnimalCareMarkarthScene04.forcestart() ; #DEBUG_LINE_NO:2857
  ElseIf i == 5 ; #DEBUG_LINE_NO:2858
    BaboEventAnimalCareMarkarthScene05.forcestart() ; #DEBUG_LINE_NO:2859
  ElseIf i == 6 ; #DEBUG_LINE_NO:2860
    BaboEventAnimalCareMarkarthScene06.forcestart() ; #DEBUG_LINE_NO:2861
  ElseIf i == 7 ; #DEBUG_LINE_NO:2862
    BaboEventAnimalCareMarkarthScene07.forcestart() ; #DEBUG_LINE_NO:2863
  EndIf
EndFunction

Function BERieklingThirskScenePlay(Int i)
  If i == 1 ; #DEBUG_LINE_NO:2871
    BaboEventRieklingThirskScene01.forcestart() ; #DEBUG_LINE_NO:2872
  Else
    BaboEventRieklingThirskStartQuestScene.forcestart() ; #DEBUG_LINE_NO:2874
  EndIf
EndFunction

Function ActorStore(Actor akactor)
  akactor.moveto(BaboDumpsterRef, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:2879
EndFunction

Function StalkerActorStore(ReferenceAlias akRef)
  Actor akactor = akRef.GetReference() as Actor ; #DEBUG_LINE_NO:2883
  Self.ActorStore(akactor) ; #DEBUG_LINE_NO:2884
  BaboStalkerList.addform(akactor as Form) ; #DEBUG_LINE_NO:2885
EndFunction

Function GetEdibleFormlist(Actor akactor, Int index, Int Howmany, Bool randomB)
  Int listsize = BaboEdibleCheapFormList.getsize() ; #DEBUG_LINE_NO:2891
  If randomB ; #DEBUG_LINE_NO:2892
    While Howmany > 0 ; #DEBUG_LINE_NO:2893
      Int ri = Utility.randomint(0, listsize) ; #DEBUG_LINE_NO:2894
      akactor.Additem(BaboEdibleCheapFormList.getat(ri), 1, False) ; #DEBUG_LINE_NO:2895
      Howmany -= 1 ; #DEBUG_LINE_NO:2896
    EndWhile
  Else
    akactor.Additem(BaboEdibleCheapFormList.getat(index), Howmany, False) ; #DEBUG_LINE_NO:2899
  EndIf
EndFunction

Function GetEdibleSusFormlist(Actor akactor, Int index, Int Howmany, Bool randomB)
  Int listsize = BaboEdibleCheapSusFormList.getsize() ; #DEBUG_LINE_NO:2906
  If randomB ; #DEBUG_LINE_NO:2907
    While Howmany > 0 ; #DEBUG_LINE_NO:2908
      Int ri = Utility.randomint(0, listsize) ; #DEBUG_LINE_NO:2909
      akactor.Additem(BaboEdibleCheapSusFormList.getat(ri), 1, False) ; #DEBUG_LINE_NO:2910
      Howmany -= 1 ; #DEBUG_LINE_NO:2911
    EndWhile
  Else
    akactor.Additem(BaboEdibleCheapSusFormList.getat(index), Howmany, False) ; #DEBUG_LINE_NO:2914
  EndIf
EndFunction

Bool Function BCLEvent08ActorCheck()
  Int sizeint = BaboChangeLocationEvent08WindhelmList.getsize() ; #DEBUG_LINE_NO:2919
  If sizeint > 0 ; #DEBUG_LINE_NO:2920
    Return True ; #DEBUG_LINE_NO:2921
  Else
    Return False ; #DEBUG_LINE_NO:2923
  EndIf
EndFunction

Function CL08StalkerActorStore(ReferenceAlias akRef, Int LocationNumber)
  Int ListNumber
  Actor akactor = akRef.GetReference() as Actor ; #DEBUG_LINE_NO:2928
  Self.ActorStore(akactor) ; #DEBUG_LINE_NO:2930
  If LocationNumber == 1 ; #DEBUG_LINE_NO:2931
    BaboCL08WindhelmStalkerList.addform(akactor as Form) ; #DEBUG_LINE_NO:2932
    ListNumber = BaboCL08WindhelmStalkerList.getsize() ; #DEBUG_LINE_NO:2933
    BaboChangeLocation08FraudWindhelm.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:2934
  ElseIf LocationNumber == 2 ; #DEBUG_LINE_NO:2935
    BaboCL08RiftenStalkerList.addform(akactor as Form) ; #DEBUG_LINE_NO:2936
    ListNumber = BaboCL08RiftenStalkerList.getsize() ; #DEBUG_LINE_NO:2937
    BaboChangeLocation08FraudRiften.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:2938
  ElseIf LocationNumber == 3 ; #DEBUG_LINE_NO:2939
    BaboCL08SolitudeStalkerList.addform(akactor as Form) ; #DEBUG_LINE_NO:2940
    ListNumber = BaboCL08SolitudeStalkerList.getsize() ; #DEBUG_LINE_NO:2941
    BaboChangeLocation08FraudSolitude.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:2942
  ElseIf LocationNumber == 4 ; #DEBUG_LINE_NO:2943
    BaboCL08BYOH01StalkerList.addform(akactor as Form) ; #DEBUG_LINE_NO:2944
    ListNumber = BaboCL08BYOH01StalkerList.getsize() ; #DEBUG_LINE_NO:2945
    BaboChangeLocation08FraudBYOH01.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:2946
  ElseIf LocationNumber == 5 ; #DEBUG_LINE_NO:2947
    BaboCL08BYOH02StalkerList.addform(akactor as Form) ; #DEBUG_LINE_NO:2948
    ListNumber = BaboCL08BYOH02StalkerList.getsize() ; #DEBUG_LINE_NO:2949
    BaboChangeLocation08FraudBYOH02.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:2950
  ElseIf LocationNumber == 6 ; #DEBUG_LINE_NO:2951
    BaboCL08BYOH03StalkerList.addform(akactor as Form) ; #DEBUG_LINE_NO:2952
    ListNumber = BaboCL08BYOH03StalkerList.getsize() ; #DEBUG_LINE_NO:2953
    BaboChangeLocation08FraudBYOH03.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:2954
  ElseIf LocationNumber == 7 ; #DEBUG_LINE_NO:2955
    BaboCL08RavenRockStalkerList.addform(akactor as Form) ; #DEBUG_LINE_NO:2956
    ListNumber = BaboCL08RavenRockStalkerList.getsize() ; #DEBUG_LINE_NO:2957
    BaboChangeLocation08Fraudsolstheim.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:2958
  Else
    BaboCL08MiscStalkerList.addform(akactor as Form) ; #DEBUG_LINE_NO:2960
    ListNumber = BaboCL08MiscStalkerList.getsize() ; #DEBUG_LINE_NO:2961
    BaboChangeLocation08FraudMIsc.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:2962
  EndIf
EndFunction

Function BCLEvent08ActorStore(ReferenceAlias akRef, Int LocationNumber)
  Int ListNumber
  Actor akactor = akRef.GetReference() as Actor ; #DEBUG_LINE_NO:2967
  Self.BCLEvent08ActorFanFaction(akactor) ; #DEBUG_LINE_NO:2969
  If LocationNumber == 1 ; #DEBUG_LINE_NO:2970
    BaboChangeLocationEvent08WindhelmList.addform(akactor as Form) ; #DEBUG_LINE_NO:2971
    ListNumber = BaboChangeLocationEvent08WindhelmList.getsize() ; #DEBUG_LINE_NO:2972
    BaboChangeLocation08FanWindhelm.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:2973
  ElseIf LocationNumber == 2 ; #DEBUG_LINE_NO:2974
    BaboChangeLocationEvent08RiftenList.addform(akactor as Form) ; #DEBUG_LINE_NO:2975
    ListNumber = BaboChangeLocationEvent08RiftenList.getsize() ; #DEBUG_LINE_NO:2976
    BaboChangeLocation08FanRiften.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:2977
  ElseIf LocationNumber == 3 ; #DEBUG_LINE_NO:2978
    BaboChangeLocationEvent08SolitudeList.addform(akactor as Form) ; #DEBUG_LINE_NO:2979
    ListNumber = BaboChangeLocationEvent08SolitudeList.getsize() ; #DEBUG_LINE_NO:2980
    BaboChangeLocation08FanSolitude.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:2981
  ElseIf LocationNumber == 4 ; #DEBUG_LINE_NO:2982
    BaboChangeLocationEvent08BYOH01List.addform(akactor as Form) ; #DEBUG_LINE_NO:2983
    ListNumber = BaboChangeLocationEvent08BYOH01List.getsize() ; #DEBUG_LINE_NO:2984
    BaboChangeLocation08FanBYOH01.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:2985
  ElseIf LocationNumber == 5 ; #DEBUG_LINE_NO:2986
    BaboChangeLocationEvent08BYOH02List.addform(akactor as Form) ; #DEBUG_LINE_NO:2987
    ListNumber = BaboChangeLocationEvent08BYOH02List.getsize() ; #DEBUG_LINE_NO:2988
    BaboChangeLocation08FanBYOH02.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:2989
  ElseIf LocationNumber == 6 ; #DEBUG_LINE_NO:2990
    BaboChangeLocationEvent08BYOH03List.addform(akactor as Form) ; #DEBUG_LINE_NO:2991
    ListNumber = BaboChangeLocationEvent08BYOH03List.getsize() ; #DEBUG_LINE_NO:2992
    BaboChangeLocation08FanBYOH03.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:2993
  ElseIf LocationNumber == 7 ; #DEBUG_LINE_NO:2994
    BaboChangeLocationEvent08SolstheimList.addform(akactor as Form) ; #DEBUG_LINE_NO:2995
    ListNumber = BaboChangeLocationEvent08SolstheimList.getsize() ; #DEBUG_LINE_NO:2996
    BaboChangeLocation08Fansolstheim.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:2997
  ElseIf LocationNumber == 20 ; #DEBUG_LINE_NO:2998
    BaboChangeLocationEvent08Custom01List.addform(akactor as Form) ; #DEBUG_LINE_NO:2999
    ListNumber = BaboChangeLocationEvent08Custom01List.getsize() ; #DEBUG_LINE_NO:3000
    BaboChangeLocation08FanCustom01.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:3001
  ElseIf LocationNumber == 21 ; #DEBUG_LINE_NO:3002
    BaboChangeLocationEvent08Custom02List.addform(akactor as Form) ; #DEBUG_LINE_NO:3003
    ListNumber = BaboChangeLocationEvent08Custom02List.getsize() ; #DEBUG_LINE_NO:3004
    BaboChangeLocation08FanCustom02.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:3005
  ElseIf LocationNumber == 22 ; #DEBUG_LINE_NO:3006
    BaboChangeLocationEvent08Custom03List.addform(akactor as Form) ; #DEBUG_LINE_NO:3007
    ListNumber = BaboChangeLocationEvent08Custom03List.getsize() ; #DEBUG_LINE_NO:3008
    BaboChangeLocation08FanCustom03.setvalue(ListNumber as Float) ; #DEBUG_LINE_NO:3009
  EndIf
EndFunction

Function BCLEvent08ActorFanFaction(Actor akactor)
  If akactor.isinfaction(BaboChangeLocationEvent08FanFaction) ; #DEBUG_LINE_NO:3016
    akactor.setfactionrank(BaboChangeLocationEvent08FanFaction, akactor.getfactionrank(BaboChangeLocationEvent08FanFaction) + 1) ; #DEBUG_LINE_NO:3017
  Else
    akactor.removefromfaction(BaboChangeLocationEvent08Faction) ; #DEBUG_LINE_NO:3019
    akactor.addtofaction(BaboChangeLocationEvent08FanFaction) ; #DEBUG_LINE_NO:3020
  EndIf
EndFunction

Actor Function BCLEvent08ActorRecycle()
  Int listsize = BaboChangeLocationEvent08WindhelmList.getsize() ; #DEBUG_LINE_NO:3029
  Actor MaybeFan = BaboChangeLocationEvent08WindhelmList.getat(0) as Actor ; #DEBUG_LINE_NO:3031
  Return MaybeFan ; #DEBUG_LINE_NO:3034
EndFunction

Function BCLEventScenePlay(Int i, String EventName)
  If EventName == "BaboChangeLocationEvent07" ; #DEBUG_LINE_NO:3039
    If i == 1 ; #DEBUG_LINE_NO:3040
      BaboChangeLocationEvent07SceneWellRested.forcestart() ; #DEBUG_LINE_NO:3041
    ElseIf i == 2 ; #DEBUG_LINE_NO:3042
      BaboChangeLocationEvent07Scene04.forcestart() ; #DEBUG_LINE_NO:3043
    ElseIf i == 3 ; #DEBUG_LINE_NO:3044
      BaboChangeLocationEvent07Scene03.forcestart() ; #DEBUG_LINE_NO:3045
    EndIf
  ElseIf EventName == "BaboChangeLocationEvent08" ; #DEBUG_LINE_NO:3047
    If i == 1 ; #DEBUG_LINE_NO:3048
      BaboChangeLocationEvent08AutographScene01.forcestart() ; #DEBUG_LINE_NO:3049
    ElseIf i == 2 ; #DEBUG_LINE_NO:3050
      BaboChangeLocationEvent08AutographScene02.forcestart() ; #DEBUG_LINE_NO:3051
    ElseIf i == 3 ; #DEBUG_LINE_NO:3052
      BaboChangeLocationEvent08AutographScene03.forcestart() ; #DEBUG_LINE_NO:3053
    ElseIf i == 4 ; #DEBUG_LINE_NO:3054
      BaboChangeLocationEvent08AutographScene04.forcestart() ; #DEBUG_LINE_NO:3055
    ElseIf i == 5 ; #DEBUG_LINE_NO:3056
      BaboChangeLocationEvent08AutographScene05.forcestart() ; #DEBUG_LINE_NO:3057
    ElseIf i == 6 ; #DEBUG_LINE_NO:3058
      BaboChangeLocationEvent08AutographScene06.forcestart() ; #DEBUG_LINE_NO:3059
    ElseIf i == 7 ; #DEBUG_LINE_NO:3060
      BaboChangeLocationEvent08AutographScene07.forcestart() ; #DEBUG_LINE_NO:3061
    EndIf
  ElseIf EventName == "BaboChangeLocationEvent02" ; #DEBUG_LINE_NO:3063
    If i == 1 ; #DEBUG_LINE_NO:3064
      BaboChangeLocationEvent02Scene01.forcestart() ; #DEBUG_LINE_NO:3065
    ElseIf i == 2 ; #DEBUG_LINE_NO:3066
      BaboChangeLocationEvent02Scene02.forcestart() ; #DEBUG_LINE_NO:3067
    EndIf
  ElseIf EventName == "BaboChangeLocationEvent02Coast" ; #DEBUG_LINE_NO:3069
    If i == 1 ; #DEBUG_LINE_NO:3070
      BaboChangeLocationEvent02CoastScene01.forcestart() ; #DEBUG_LINE_NO:3071
    EndIf
  ElseIf EventName == "BaboChangeLocationEvent02Forest" ; #DEBUG_LINE_NO:3073
    If i == 1 ; #DEBUG_LINE_NO:3074
      BaboChangeLocationEvent02ForestScene01.forcestart() ; #DEBUG_LINE_NO:3075
    EndIf
  ElseIf EventName == "BaboChangeLocationEvent02ForestSnow" ; #DEBUG_LINE_NO:3077
    If i == 1 ; #DEBUG_LINE_NO:3078
      BaboChangeLocationEvent02ForestSnowScene01.forcestart() ; #DEBUG_LINE_NO:3079
    EndIf
  ElseIf EventName == "BaboChangeLocationEvent02Marsh" ; #DEBUG_LINE_NO:3081
    If i == 1 ; #DEBUG_LINE_NO:3082
      BaboChangeLocationEvent02MarshScene01.forcestart() ; #DEBUG_LINE_NO:3083
    EndIf
  ElseIf EventName == "BaboChangeLocationEvent02Mountain" ; #DEBUG_LINE_NO:3085
    If i == 1 ; #DEBUG_LINE_NO:3086
      BaboChangeLocationEvent02MountainScene01.forcestart() ; #DEBUG_LINE_NO:3087
    EndIf
  ElseIf EventName == "BaboChangeLocationEvent02MountainSnow" ; #DEBUG_LINE_NO:3089
    If i == 1 ; #DEBUG_LINE_NO:3090
      BaboChangeLocationEvent02MountainSnowScene01.forcestart() ; #DEBUG_LINE_NO:3091
    EndIf
  ElseIf EventName == "BaboChangeLocationEvent02Plain" ; #DEBUG_LINE_NO:3093
    If i == 1 ; #DEBUG_LINE_NO:3094
      BaboChangeLocationEvent02PlainScene01.forcestart() ; #DEBUG_LINE_NO:3095
    EndIf
  ElseIf EventName == "BaboChangeLocationEvent02PlainSnow" ; #DEBUG_LINE_NO:3097
    If i == 1 ; #DEBUG_LINE_NO:3098
      BaboChangeLocationEvent02PlainSnowScene01.forcestart() ; #DEBUG_LINE_NO:3099
    EndIf
  ElseIf EventName == "BaboEventAnimalCare" ; #DEBUG_LINE_NO:3101
    If i == 1 ; #DEBUG_LINE_NO:3102
      BaboEventAnimalCareSceneHorse01.forcestart() ; #DEBUG_LINE_NO:3103
    EndIf
  ElseIf EventName == "BaboEncounter01" ; #DEBUG_LINE_NO:3105
    If i == 1 ; #DEBUG_LINE_NO:3106
      BaboEncounter01Scene01.forcestart() ; #DEBUG_LINE_NO:3107
    ElseIf i == 2 ; #DEBUG_LINE_NO:3108
      BaboEncounter01Scene02.forcestart() ; #DEBUG_LINE_NO:3109
    ElseIf i == 3 ; #DEBUG_LINE_NO:3110
      BaboEncounter01Scene03.forcestart() ; #DEBUG_LINE_NO:3111
    ElseIf i == 4 ; #DEBUG_LINE_NO:3112
      BaboEncounter01Scene04.forcestart() ; #DEBUG_LINE_NO:3113
    ElseIf i == 5 ; #DEBUG_LINE_NO:3114
      BaboEncounter01Scene05.forcestart() ; #DEBUG_LINE_NO:3115
    Else
      BaboEncounter01Scene02.stop() ; #DEBUG_LINE_NO:3117
      BaboEncounter01Scene05.stop() ; #DEBUG_LINE_NO:3118
    EndIf
  ElseIf EventName == "BaboEncounter03" ; #DEBUG_LINE_NO:3120
    If i == 1 ; #DEBUG_LINE_NO:3121
      BaboEncounter03Scene01.forcestart() ; #DEBUG_LINE_NO:3122
    ElseIf i == 2 ; #DEBUG_LINE_NO:3123
      BaboEncounter03Scene02.forcestart() ; #DEBUG_LINE_NO:3124
    ElseIf i == 3 ; #DEBUG_LINE_NO:3125
      BaboEncounter03Scene03.forcestart() ; #DEBUG_LINE_NO:3126
    EndIf
  ElseIf EventName == "BaboEncounter04" ; #DEBUG_LINE_NO:3128
    If i == 1 ; #DEBUG_LINE_NO:3129
      BaboEncounter04Scene01.forcestart() ; #DEBUG_LINE_NO:3130
    ElseIf i == 2 ; #DEBUG_LINE_NO:3131
      BaboEncounter04Scene02.forcestart() ; #DEBUG_LINE_NO:3132
    ElseIf i == 3 ; #DEBUG_LINE_NO:3133
      BaboEncounter04Scene03.forcestart() ; #DEBUG_LINE_NO:3134
    EndIf
  ElseIf EventName == "BaboEncounter05" ; #DEBUG_LINE_NO:3136
    If i == 1 ; #DEBUG_LINE_NO:3137
      BaboEncounter05Scene01.forcestart() ; #DEBUG_LINE_NO:3138
    ElseIf i == 2 ; #DEBUG_LINE_NO:3139
      BaboEncounter05Scene02.forcestart() ; #DEBUG_LINE_NO:3140
    EndIf
  ElseIf EventName == "BaboEncounter07" ; #DEBUG_LINE_NO:3142
    If i == 1 ; #DEBUG_LINE_NO:3143
      BaboEncounter07Scene01.forcestart() ; #DEBUG_LINE_NO:3144
    ElseIf i == 2 ; #DEBUG_LINE_NO:3145
      BaboEncounter07Scene02.forcestart() ; #DEBUG_LINE_NO:3146
    ElseIf i == 3 ; #DEBUG_LINE_NO:3147
      BaboEncounter07Scene03.forcestart() ; #DEBUG_LINE_NO:3148
    ElseIf i == 4 ; #DEBUG_LINE_NO:3149
      BaboEncounter07Scene04.forcestart() ; #DEBUG_LINE_NO:3150
    ElseIf i == 5 ; #DEBUG_LINE_NO:3151
      BaboEncounter07Scene05.forcestart() ; #DEBUG_LINE_NO:3152
    Else
      BaboEncounter07Scene01.stop() ; #DEBUG_LINE_NO:3154
      BaboEncounter07Scene02.stop() ; #DEBUG_LINE_NO:3155
      BaboEncounter07Scene03.stop() ; #DEBUG_LINE_NO:3156
    EndIf
  ElseIf EventName == "BaboEncounter09" ; #DEBUG_LINE_NO:3158
    If i == 1 ; #DEBUG_LINE_NO:3159
      BaboEncounter09Scene01.forcestart() ; #DEBUG_LINE_NO:3160
    ElseIf i == 2 ; #DEBUG_LINE_NO:3161
      BaboEncounter09Scene02.forcestart() ; #DEBUG_LINE_NO:3162
    EndIf
  ElseIf EventName == "BaboEncounter11" ; #DEBUG_LINE_NO:3164
    If i == 1 ; #DEBUG_LINE_NO:3165
      BaboEncounter11Scene01.forcestart() ; #DEBUG_LINE_NO:3166
    ElseIf i == 2 ; #DEBUG_LINE_NO:3167
      BaboEncounter11Scene02.forcestart() ; #DEBUG_LINE_NO:3168
    ElseIf i == 3 ; #DEBUG_LINE_NO:3169
      BaboEncounter11Scene03.forcestart() ; #DEBUG_LINE_NO:3170
    ElseIf i == 4 ; #DEBUG_LINE_NO:3171
      BaboEncounter11Scene04.forcestart() ; #DEBUG_LINE_NO:3172
    EndIf
  ElseIf EventName == "BaboEncounter13" ; #DEBUG_LINE_NO:3174
    If i == 1 ; #DEBUG_LINE_NO:3175
      BaboEncounter13SceneStart.forcestart() ; #DEBUG_LINE_NO:3176
    ElseIf i == 2 ; #DEBUG_LINE_NO:3177
      BaboEncounter13SceneBeforeFight.forcestart() ; #DEBUG_LINE_NO:3178
    ElseIf i == 3 ; #DEBUG_LINE_NO:3179
      BaboEncounter13SceneIgnore.forcestart() ; #DEBUG_LINE_NO:3180
    ElseIf i == 4 ; #DEBUG_LINE_NO:3181
      BaboEncounter13SceneNoFight.forcestart() ; #DEBUG_LINE_NO:3182
    ElseIf i == 5 ; #DEBUG_LINE_NO:3183
      BaboEncounter13PayDebt.forcestart() ; #DEBUG_LINE_NO:3184
    ElseIf i == 6 ; #DEBUG_LINE_NO:3185
      BaboEncounter13SceneDefeated.forcestart() ; #DEBUG_LINE_NO:3186
    EndIf
  ElseIf EventName == "BaboEventMarkarthGuard" ; #DEBUG_LINE_NO:3188
    If i == 1 ; #DEBUG_LINE_NO:3189
      BaboEventMarkarthGuardScene00a.forcestart() ; #DEBUG_LINE_NO:3190
    ElseIf i == 2 ; #DEBUG_LINE_NO:3191
      BaboEventMarkarthGuardScene00b.forcestart() ; #DEBUG_LINE_NO:3192
    ElseIf i == 3 ; #DEBUG_LINE_NO:3193
      BaboEventMarkarthGuardScene01.forcestart() ; #DEBUG_LINE_NO:3194
    ElseIf i == 4 ; #DEBUG_LINE_NO:3195
      BaboEventMarkarthGuardScene02.forcestart() ; #DEBUG_LINE_NO:3196
    EndIf
  EndIf
EndFunction

Function MerchantOrcSex01(String EventName, String argString, Float argNum, Form sender)
  Actor Victim = SexLab.HookActors(argString)[0] ; #DEBUG_LINE_NO:3213
  Actor Raper01 = SexLab.HookActors(argString)[1] ; #DEBUG_LINE_NO:3214
  Actor[] sexActors = new Actor[2] ; #DEBUG_LINE_NO:3215
  sexActors[0] = Victim ; #DEBUG_LINE_NO:3216
  sexActors[1] = Raper01 ; #DEBUG_LINE_NO:3217
  sslbaseanimation[] anims = SexLab.GetAnimationsByTag(2, "MF", "Sex", "Vaginal", "Femdom", True) ; #DEBUG_LINE_NO:3219
  Self.RegisterForModEvent("AnimationEnd_MOS02", "MerchantOrcSex02") ; #DEBUG_LINE_NO:3220
  SexLab.StartSex(sexActors, anims, None, None, True, "MOS02") ; #DEBUG_LINE_NO:3221
EndFunction

Function MerchantOrcSex02(String EventName, String argString, Float argNum, Form sender)
  Actor Victim = SexLab.HookActors(argString)[0] ; #DEBUG_LINE_NO:3225
  Actor Raper01 = SexLab.HookActors(argString)[1] ; #DEBUG_LINE_NO:3226
  Actor[] sexActors = new Actor[2] ; #DEBUG_LINE_NO:3227
  sexActors[0] = Victim ; #DEBUG_LINE_NO:3228
  sexActors[1] = Raper01 ; #DEBUG_LINE_NO:3229
  sslbaseanimation[] anims = SexLab.GetAnimationsByTag(2, "MF", "Aggressive", "Vaginal", "Femdom", True) ; #DEBUG_LINE_NO:3231
  SexLab.StartSex(sexActors, anims, sexActors[0], None, True, "") ; #DEBUG_LINE_NO:3232
EndFunction

Function AfterSexSceneHireling(String EventName, String argString, Float argNum, Form sender)
  (BaboDialogueHirelings as babodialoguehirelingsquest).AfterRapeSceneStart() ; #DEBUG_LINE_NO:3236
EndFunction

Function LoanSharkAfterSexTest(String EventName, String argString, Float argNum, Form sender)
  Debug.messagebox("BaboSexControllerManager Test Complete") ; #DEBUG_LINE_NO:3240
EndFunction

Function DraggingtoSexMarket()
  If BaboSimpleSlavery.getvalue() == 1 as Float ; #DEBUG_LINE_NO:3245
    Self.sendModEvent("SSLV Entry", "", 0.0) ; #DEBUG_LINE_NO:3246
  EndIf
EndFunction

Function CLEvent06GuardSex01(String EventName, String argString, Float argNum, Form sender)
  (BaboDialogueCLEvent06 as babodialogueclevent06script).GuardSexEventEnd() ; #DEBUG_LINE_NO:3251
EndFunction

Function ChangeLocationEvent01Sex01(String EventName, String argString, Float argNum, Form sender)
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3256
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3257
  BaboChangeLocationEvent01.setstage(32) ; #DEBUG_LINE_NO:3258
EndFunction

Function ChangeLocationEvent01Sex02(String EventName, String argString, Float argNum, Form sender)
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3262
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3263
  BaboChangeLocationEvent01.setstage(33) ; #DEBUG_LINE_NO:3264
EndFunction

Function ChangeLocationEvent02(String EventName, String argString, Float argNum, Form sender)
  If BaboChangeLocationEvent02.getstage() < 30 ; #DEBUG_LINE_NO:3268
    BaboChangeLocationEvent02.setstage(30) ; #DEBUG_LINE_NO:3269
  ElseIf BaboChangeLocationEvent02.getstage() == 30 ; #DEBUG_LINE_NO:3270
    BaboChangeLocationEvent02.setstage(40) ; #DEBUG_LINE_NO:3271
  EndIf
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3273
EndFunction

Function ChangeLocationEvent02Ex(String EventName, String argString, Float argNum, Form sender)
  If BaboChangeLocationEvent02.getstage() < 30 ; #DEBUG_LINE_NO:3277
    BaboChangeLocationEvent02.setstage(25) ; #DEBUG_LINE_NO:3278
  ElseIf BaboChangeLocationEvent02.getstage() == 25 ; #DEBUG_LINE_NO:3279
    BaboChangeLocationEvent02.setstage(31) ; #DEBUG_LINE_NO:3280
  EndIf
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3282
EndFunction

Function ChangeLocationEvent02Coast(String EventName, String argString, Float argNum, Form sender)
  If BaboChangeLocationEvent02Coast.getstage() == 20 ; #DEBUG_LINE_NO:3287
    BaboChangeLocationEvent02Coast.setstage(30) ; #DEBUG_LINE_NO:3288
  ElseIf BaboChangeLocationEvent02Coast.getstage() == 30 ; #DEBUG_LINE_NO:3289
    BaboChangeLocationEvent02Coast.setstage(40) ; #DEBUG_LINE_NO:3290
  EndIf
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3292
EndFunction

Function ChangeLocationEvent02Forest(String EventName, String argString, Float argNum, Form sender)
  If BaboChangeLocationEvent02Forest.getstage() == 20 ; #DEBUG_LINE_NO:3296
    BaboChangeLocationEvent02Forest.setstage(30) ; #DEBUG_LINE_NO:3297
  ElseIf BaboChangeLocationEvent02Forest.getstage() == 30 ; #DEBUG_LINE_NO:3298
    BaboChangeLocationEvent02Forest.setstage(40) ; #DEBUG_LINE_NO:3299
  EndIf
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3301
EndFunction

Function ChangeLocationEvent02ForestSnow(String EventName, String argString, Float argNum, Form sender)
  If BaboChangeLocationEvent02ForestSnow.getstage() == 20 ; #DEBUG_LINE_NO:3305
    BaboChangeLocationEvent02ForestSnow.setstage(30) ; #DEBUG_LINE_NO:3306
  ElseIf BaboChangeLocationEvent02ForestSnow.getstage() == 30 ; #DEBUG_LINE_NO:3307
    BaboChangeLocationEvent02ForestSnow.setstage(40) ; #DEBUG_LINE_NO:3308
  EndIf
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3310
EndFunction

Function ChangeLocationEvent02Marsh(String EventName, String argString, Float argNum, Form sender)
  If BaboChangeLocationEvent02Marsh.getstage() == 20 ; #DEBUG_LINE_NO:3314
    BaboChangeLocationEvent02Marsh.setstage(30) ; #DEBUG_LINE_NO:3315
  ElseIf BaboChangeLocationEvent02Marsh.getstage() == 30 ; #DEBUG_LINE_NO:3316
    BaboChangeLocationEvent02Marsh.setstage(40) ; #DEBUG_LINE_NO:3317
  EndIf
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3319
EndFunction

Function ChangeLocationEvent02Mountain(String EventName, String argString, Float argNum, Form sender)
  If BaboChangeLocationEvent02Mountain.getstage() == 20 ; #DEBUG_LINE_NO:3323
    BaboChangeLocationEvent02Mountain.setstage(30) ; #DEBUG_LINE_NO:3324
  ElseIf BaboChangeLocationEvent02Mountain.getstage() == 30 ; #DEBUG_LINE_NO:3325
    BaboChangeLocationEvent02Mountain.setstage(40) ; #DEBUG_LINE_NO:3326
  EndIf
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3328
EndFunction

Function ChangeLocationEvent02MountainSnow(String EventName, String argString, Float argNum, Form sender)
  If BaboChangeLocationEvent02MountainSnow.getstage() == 20 ; #DEBUG_LINE_NO:3332
    BaboChangeLocationEvent02MountainSnow.setstage(30) ; #DEBUG_LINE_NO:3333
  ElseIf BaboChangeLocationEvent02MountainSnow.getstage() == 30 ; #DEBUG_LINE_NO:3334
    BaboChangeLocationEvent02MountainSnow.setstage(40) ; #DEBUG_LINE_NO:3335
  EndIf
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3337
EndFunction

Function ChangeLocationEvent02Plain(String EventName, String argString, Float argNum, Form sender)
  If BaboChangeLocationEvent02Plain.getstage() == 20 ; #DEBUG_LINE_NO:3341
    BaboChangeLocationEvent02Plain.setstage(30) ; #DEBUG_LINE_NO:3342
  ElseIf BaboChangeLocationEvent02Plain.getstage() == 30 ; #DEBUG_LINE_NO:3343
    BaboChangeLocationEvent02Plain.setstage(40) ; #DEBUG_LINE_NO:3344
  EndIf
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3346
EndFunction

Function ChangeLocationEvent02PlainSnow(String EventName, String argString, Float argNum, Form sender)
  If BaboChangeLocationEvent02PlainSnow.getstage() == 20 ; #DEBUG_LINE_NO:3350
    BaboChangeLocationEvent02PlainSnow.setstage(30) ; #DEBUG_LINE_NO:3351
  ElseIf BaboChangeLocationEvent02PlainSnow.getstage() == 30 ; #DEBUG_LINE_NO:3352
    BaboChangeLocationEvent02PlainSnow.setstage(40) ; #DEBUG_LINE_NO:3353
  EndIf
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3355
EndFunction

Function ChangeLocationEvent02DLC02(String EventName, String argString, Float argNum, Form sender)
  If BaboChangeLocationEvent02DLC02.getstage() == 20 ; #DEBUG_LINE_NO:3360
    BaboChangeLocationEvent02DLC02.setstage(30) ; #DEBUG_LINE_NO:3361
  ElseIf BaboChangeLocationEvent02DLC02.getstage() == 30 ; #DEBUG_LINE_NO:3362
    BaboChangeLocationEvent02DLC02.setstage(40) ; #DEBUG_LINE_NO:3363
  EndIf
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3366
EndFunction

Function ChangeLocationEvent05Sex01(String EventName, String argString, Float argNum, Form sender)
  BaboChangeLocationEvent05.setstage(15) ; #DEBUG_LINE_NO:3370
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3371
EndFunction

Function ChangeLocationEvent05Sex02(String EventName, String argString, Float argNum, Form sender)
  BaboChangeLocationEvent05.setstage(25) ; #DEBUG_LINE_NO:3375
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3376
EndFunction

Function ChangeLocationEvent08(String EventName, String argString, Float argNum, Form sender)
  If BaboChangeLocationEvent08.getstage() == 48 ; #DEBUG_LINE_NO:3380
    Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3381
    BaboChangeLocationEvent08.setstage(55) ; #DEBUG_LINE_NO:3382
  ElseIf BaboChangeLocationEvent08.getstage() == 50 ; #DEBUG_LINE_NO:3383
    BaboChangeLocationEvent08.setstage(56) ; #DEBUG_LINE_NO:3384
  EndIf
EndFunction

Function ChangeLocationEvent08_47(String EventName, String argString, Float argNum, Form sender)
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3389
  Utility.Wait(1.0) ; #DEBUG_LINE_NO:3390
  Self.BCLEventScenePlay(5, "BaboChangeLocationEvent08") ; #DEBUG_LINE_NO:3391
EndFunction

Function Encounter01Sex01(String EventName, String argString, Float argNum, Form sender)
  BaboEncounter01Scene01.forcestart() ; #DEBUG_LINE_NO:3397
EndFunction

Function Encounter01Sex02(String EventName, String argString, Float argNum, Form sender)
  BaboEncounter01.setstage(75) ; #DEBUG_LINE_NO:3403
EndFunction

Function Encounter03Sex01(String EventName, String argString, Float argNum, Form sender)
  BaboEncounter03.setstage(18) ; #DEBUG_LINE_NO:3408
EndFunction

Function Encounter03Sex02(String EventName, String argString, Float argNum, Form sender)
  Self.BCLEventScenePlay(2, "BaboEncounter03") ; #DEBUG_LINE_NO:3412
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3413
EndFunction

Function Encounter03Sex03(String EventName, String argString, Float argNum, Form sender)
  Self.BCLEventScenePlay(1, "BaboEncounter03") ; #DEBUG_LINE_NO:3417
  PlayerRef.SetUnconscious(False) ; #DEBUG_LINE_NO:3418
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3419
EndFunction

Function Encounter04Sex01(String EventName, String argString, Float argNum, Form sender)
  BaboEncounter04.setstage(10) ; #DEBUG_LINE_NO:3423
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3424
EndFunction

Function Encounter04Sex02(String EventName, String argString, Float argNum, Form sender)
  BaboEncounter04.setstage(25) ; #DEBUG_LINE_NO:3428
EndFunction

Function Encounter04Sex03(String EventName, String argString, Float argNum, Form sender)
  BaboEncounter04.setstage(30) ; #DEBUG_LINE_NO:3432
EndFunction

Function Encounter07Sex01(String EventName, String argString, Float argNum, Form sender)
  BaboEncounter07.setstage(12) ; #DEBUG_LINE_NO:3436
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3437
EndFunction

Function Encounter07Sex02(String EventName, String argString, Float argNum, Form sender)
  BaboEncounter07.setstage(37) ; #DEBUG_LINE_NO:3441
EndFunction

Function Encounter09SexNPC(String EventName, String argString, Float argNum, Form sender)
  If BaboEncounter09.getstage() == 0 ; #DEBUG_LINE_NO:3445
    BaboEncounter09.setstage(3) ; #DEBUG_LINE_NO:3446
  EndIf
EndFunction

Function Encounter09Sex01(String EventName, String argString, Float argNum, Form sender)
  If BaboEncounter09.getstage() == 20 ; #DEBUG_LINE_NO:3451
    BaboEncounter09.setstage(30) ; #DEBUG_LINE_NO:3452
  EndIf
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3454
EndFunction

Function Encounter11Sex01(String EventName, String argString, Float argNum, Form sender)
  BaboEncounter11.setstage(50) ; #DEBUG_LINE_NO:3458
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3459
EndFunction

Function Encounter13Sex01(String EventName, String argString, Float argNum, Form sender)
  BaboEncounter13.setstage(127) ; #DEBUG_LINE_NO:3463
  BaboEncounter13SceneAfterSex.forcestart() ; #DEBUG_LINE_NO:3464
  Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboDefeatedCollapseLoop01") ; #DEBUG_LINE_NO:3465
EndFunction

Function TRIInitialSex(String EventName, String argString, Float argNum, Form sender)
  Actor Actor01 = SexLab.HookActors(argString)[0] ; #DEBUG_LINE_NO:3472
  Actor Actor02 = SexLab.HookActors(argString)[1] ; #DEBUG_LINE_NO:3473
  Self.LosingControl() ; #DEBUG_LINE_NO:3474
  Self.RandomExhaustionIdle(Actor01) ; #DEBUG_LINE_NO:3475
  (BaboEventRieklingThirsk as baboeventriekling).InitialSexSecondRound() ; #DEBUG_LINE_NO:3476
EndFunction

Function TRIInitialSex02(String EventName, String argString, Float argNum, Form sender)
  BaboEventRieklingThirskScene02.forcestart() ; #DEBUG_LINE_NO:3482
EndFunction

Function TRISubmmisiveSex(String EventName, String argString, Float argNum, Form sender)
  Self.RieklingSlaveryEventMessagebox(9) ; #DEBUG_LINE_NO:3486
  (BaboEventRieklingThirsk as baboeventriekling).ModConfidence(-3.0) ; #DEBUG_LINE_NO:3487
  (BaboEventRieklingThirsk as baboeventriekling).SlaveTrust(5.0) ; #DEBUG_LINE_NO:3488
  (BaboEventRieklingThirsk as baboeventriekling).SexEnd() ; #DEBUG_LINE_NO:3489
EndFunction

Function TRIRapeSex(String EventName, String argString, Float argNum, Form sender)
  Self.RieklingSlaveryEventMessagebox(10) ; #DEBUG_LINE_NO:3493
  (BaboEventRieklingThirsk as baboeventriekling).ModTrauma(1.0) ; #DEBUG_LINE_NO:3494
  (BaboEventRieklingThirsk as baboeventriekling).SlaveTrust(-2.0) ; #DEBUG_LINE_NO:3495
  (BaboEventRieklingThirsk as baboeventriekling).SexEnd() ; #DEBUG_LINE_NO:3496
EndFunction

Function TRIRapeSexState5(String EventName, String argString, Float argNum, Form sender)
  Actor Actor01 = SexLab.HookActors(argString)[0] ; #DEBUG_LINE_NO:3500
  Actor Actor02 = SexLab.HookActors(argString)[1] ; #DEBUG_LINE_NO:3501
  Self.LosingControl() ; #DEBUG_LINE_NO:3502
  Self.RandomExhaustionIdle(Actor01) ; #DEBUG_LINE_NO:3503
  Self.BadRieklingDuelMessagebox(13) ; #DEBUG_LINE_NO:3504
  Self.SexCustomActor(Actor01, Actor02, None, None, None, "Aggressive", "CF", "", True, "BABO_TRIRapeSexState5B", "TRIRapeSexState5B", True) ; #DEBUG_LINE_NO:3505
EndFunction

Function TRIRapeSexState5B(String EventName, String argString, Float argNum, Form sender)
  Actor Actor01 = SexLab.HookActors(argString)[0] ; #DEBUG_LINE_NO:3509
  Actor Actor02 = SexLab.HookActors(argString)[1] ; #DEBUG_LINE_NO:3510
  Self.LosingControl() ; #DEBUG_LINE_NO:3511
  Self.RandomExhaustionIdle(Actor01) ; #DEBUG_LINE_NO:3512
  Self.RieklingSlaveryEventMessagebox(12) ; #DEBUG_LINE_NO:3513
  Self.SexCustomActor(Actor01, Actor02, None, None, None, "Aggressive", "CF", "", True, "BABO_TRIRapeSexState5C", "TRIRapeSexState5C", True) ; #DEBUG_LINE_NO:3514
EndFunction

Function TRIRapeSexState5C(String EventName, String argString, Float argNum, Form sender)
  (BaboEventRieklingThirsk as baboeventriekling).SexEnd() ; #DEBUG_LINE_NO:3519
EndFunction

Function TRIThreesomeState5(String EventName, String argString, Float argNum, Form sender)
  (BaboEventRieklingThirsk as baboeventriekling).SexRoundTwo() ; #DEBUG_LINE_NO:3523
EndFunction

Function TRIThreesomeState5B(String EventName, String argString, Float argNum, Form sender)
  (BaboEventRieklingThirsk as baboeventriekling).SexRoundThree() ; #DEBUG_LINE_NO:3527
EndFunction

Function TRIThreesomeState5D(String EventName, String argString, Float argNum, Form sender)
  (BaboEventRieklingThirsk as baboeventriekling).SexEnd() ; #DEBUG_LINE_NO:3531
EndFunction

Function TRIThreesomeState22(String EventName, String argString, Float argNum, Form sender)
  Actor Actor01 = SexLab.HookActors(argString)[0] ; #DEBUG_LINE_NO:3535
  Actor Actor02 = SexLab.HookActors(argString)[1] ; #DEBUG_LINE_NO:3536
  Actor Actor03 = SexLab.HookActors(argString)[2] ; #DEBUG_LINE_NO:3537
  Self.BadRieklingDuelMessagebox(14) ; #DEBUG_LINE_NO:3538
  Self.SexCustomActor(Actor01, Actor02, Actor03, None, None, "Aggressive", "CCF", "Threesome", True, "BABO_TRIThreesomeState22B", "TRIThreesomeState22B", True) ; #DEBUG_LINE_NO:3539
EndFunction

Function TRIThreesomeState22B(String EventName, String argString, Float argNum, Form sender)
  (BaboEventRieklingThirsk as baboeventriekling).SexEnd() ; #DEBUG_LINE_NO:3544
EndFunction

Function TRIThreesomeState5Crux(String EventName, String argString, Float argNum, Form sender)
  BaboEventRieklingKneelBeforeScene.stop() ; #DEBUG_LINE_NO:3550
  Self.ExhaustionIdle(PlayerRef, "Front") ; #DEBUG_LINE_NO:3551
  (BaboEventRieklingThirsk as baboeventriekling).GotoState("NightTimeCrux") ; #DEBUG_LINE_NO:3552
EndFunction

Function TRIThreesomeState6(String EventName, String argString, Float argNum, Form sender)
  Self.LosingControl() ; #DEBUG_LINE_NO:3556
  Self.ExhaustionIdle(PlayerRef, "Front") ; #DEBUG_LINE_NO:3557
  (BaboEventRieklingThirsk as baboeventriekling).SexRoundTwo() ; #DEBUG_LINE_NO:3558
EndFunction

Function TRIThreesomeState6B(String EventName, String argString, Float argNum, Form sender)
  Self.LosingControl() ; #DEBUG_LINE_NO:3562
  Self.ExhaustionIdle(PlayerRef, "Front") ; #DEBUG_LINE_NO:3563
  (BaboEventRieklingThirsk as baboeventriekling).SexRoundThree() ; #DEBUG_LINE_NO:3564
EndFunction

Function TRIThreesomeState6C(String EventName, String argString, Float argNum, Form sender)
  Self.ExhaustionIdle(PlayerRef, "Back") ; #DEBUG_LINE_NO:3568
  (BaboEventRieklingThirsk as baboeventriekling).Restincross() ; #DEBUG_LINE_NO:3569
EndFunction

Function LoanSharkAfterSex01(String EventName, String argString, Float argNum, Form sender)
  (BaboLoanSharks as baboloansharkscript).LSAS01() ; #DEBUG_LINE_NO:3575
EndFunction

Function LoanSharkAfterSex02(String EventName, String argString, Float argNum, Form sender)
  (BaboLoanSharks as baboloansharkscript).LSAS02() ; #DEBUG_LINE_NO:3580
EndFunction

Function BadEndAfterSex01(String EventName, String argString, Float argNum, Form sender)
  (BaboBadEnd as babobadendquest).BEAS01() ; #DEBUG_LINE_NO:3585
EndFunction

Function WindhelmNewgnisisAfterSex01(String EventName, String argString, Float argNum, Form sender)
  Actor Victim = SexLab.HookActors(argString)[0] ; #DEBUG_LINE_NO:3590
  Actor Raper01 = SexLab.HookActors(argString)[1] ; #DEBUG_LINE_NO:3591
  Actor[] sexActors = new Actor[2] ; #DEBUG_LINE_NO:3592
  sexActors[0] = Victim ; #DEBUG_LINE_NO:3593
  sexActors[1] = Raper01 ; #DEBUG_LINE_NO:3594
  sslbaseanimation[] anims = SexLab.GetAnimationsByTag(2, "Necro", "Aggressive", "Vaginal", "Femdom", True) ; #DEBUG_LINE_NO:3596
  Self.RegisterForModEvent("AnimationEnd_WNAS01B", "WindhelmNewgnisisAfterSex01B") ; #DEBUG_LINE_NO:3597
  SexLab.StartSex(sexActors, anims, sexActors[0], None, True, "WNAS01B") ; #DEBUG_LINE_NO:3598
EndFunction

Function WindhelmNewgnisisAfterSex01B(String EventName, String argString, Float argNum, Form sender)
  (BaboEventWindhelmNewgnisis as baboeventnewgnisismasterscript).WNAS01() ; #DEBUG_LINE_NO:3603
EndFunction

Function WindhelmNewgnisisAfterSex02(String EventName, String argString, Float argNum, Form sender)
  (BaboEventWindhelmNewgnisis as baboeventnewgnisismasterscript).WNAS02() ; #DEBUG_LINE_NO:3608
EndFunction

Function WhiterunOrcVisitorsAfterSexBigGuy01(String EventName, String argString, Float argNum, Form sender)
  (BaboEventWhiterunOrcVisitiors as baboeventwhiterunorcvisitorsscript).WOASBigGuy01() ; #DEBUG_LINE_NO:3613
EndFunction

Function WhiterunOrcVisitorsAfterSexBigGuy02(String EventName, String argString, Float argNum, Form sender)
  (BaboEventWhiterunOrcVisitiors as baboeventwhiterunorcvisitorsscript).WOASBigGuy02() ; #DEBUG_LINE_NO:3617
EndFunction

Function WhiterunOrcVisitorsAfterSexBigGuy03(String EventName, String argString, Float argNum, Form sender)
  (BaboEventWhiterunOrcVisitiors as baboeventwhiterunorcvisitorsscript).WOASBigGuy03() ; #DEBUG_LINE_NO:3621
EndFunction

Function WhiterunOrcVisitorsAfterSex01(String EventName, String argString, Float argNum, Form sender)
  (BaboEventWhiterunOrcVisitiors as baboeventwhiterunorcvisitorsscript).WOAS01() ; #DEBUG_LINE_NO:3625
EndFunction

Function WhiterunOrcVisitorsAfterSex02(String EventName, String argString, Float argNum, Form sender)
  (BaboEventWhiterunOrcVisitiors as baboeventwhiterunorcvisitorsscript).WOAS02() ; #DEBUG_LINE_NO:3630
EndFunction

Function WhiterunViceCaptainAfterSex01(String EventName, String argString, Float argNum, Form sender)
  (BaboDialogueWhiterun as babodialoguewhiterunscript).WVAS01() ; #DEBUG_LINE_NO:3635
EndFunction

Function KidnapEvent01A(String EventName, String argString, Float argNum, Form sender)
  BaboKidnapEventDrunkPlayerScene03.forcestart() ; #DEBUG_LINE_NO:3641
  Utility.Wait(1.0) ; #DEBUG_LINE_NO:3642
  Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboExhaustedFront01") ; #DEBUG_LINE_NO:3643
EndFunction

Function KidnapEvent01B(String EventName, String argString, Float argNum, Form sender)
  BaboKidnapEventDrunkPlayerScene04.forcestart() ; #DEBUG_LINE_NO:3647
  Utility.Wait(1.0) ; #DEBUG_LINE_NO:3648
  Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboExhaustedFront02") ; #DEBUG_LINE_NO:3649
EndFunction

Function KidnapEvent01C(String EventName, String argString, Float argNum, Form sender)
  BaboKidnapEvent.setstage(55) ; #DEBUG_LINE_NO:3653
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3654
  Self.StuckControl() ; #DEBUG_LINE_NO:3655
  Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboExhaustedFront03") ; #DEBUG_LINE_NO:3656
EndFunction

Function KidnapEvent04(String EventName, String argString, Float argNum, Form sender)
  Self.CorruptionExp(1.0) ; #DEBUG_LINE_NO:3660
  (BaboKidnapEvent as babokidnapevenscript).StartUptheEvent(4) ; #DEBUG_LINE_NO:3661
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3662
  (BaboKidnapEvent as babokidnapevenscript).Nocollision(None) ; #DEBUG_LINE_NO:3663
  Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboWombHit") ; #DEBUG_LINE_NO:3665
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3666
  (BaboKidnapEvent as babokidnapevenscript).YouGotSpotted(1) ; #DEBUG_LINE_NO:3667
  (BaboKidnapEvent as babokidnapevenscript).KidnapperMovetoPoint(2) ; #DEBUG_LINE_NO:3668
EndFunction

Function KidnapEvent04A(String EventName, String argString, Float argNum, Form sender)
  Self.CorruptionExp(1.0) ; #DEBUG_LINE_NO:3672
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3673
  (BaboKidnapEvent as babokidnapevenscript).Nocollision(None) ; #DEBUG_LINE_NO:3674
  Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboExhaustedFront01") ; #DEBUG_LINE_NO:3676
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3677
  BaboKidnapEventScenarioLastSex.forcestart() ; #DEBUG_LINE_NO:3678
EndFunction

Function KidnapEvent04B(String EventName, String argString, Float argNum, Form sender)
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3682
  (BaboKidnapEvent as babokidnapevenscript).Nocollision(None) ; #DEBUG_LINE_NO:3683
  (BaboKidnapEvent as babokidnapevenscript).YouGotSpotted(1) ; #DEBUG_LINE_NO:3685
  Self.KidnapEvent01Messagebox(10) ; #DEBUG_LINE_NO:3686
EndFunction

Function KidnapEvent04C(String EventName, String argString, Float argNum, Form sender)
  Self.CorruptionExp(1.0) ; #DEBUG_LINE_NO:3690
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3691
  (BaboKidnapEvent as babokidnapevenscript).Nocollision(None) ; #DEBUG_LINE_NO:3692
  Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboExhaustedFront01") ; #DEBUG_LINE_NO:3694
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3695
  BaboKidnapEventScenario04AfterSex.forcestart() ; #DEBUG_LINE_NO:3696
EndFunction

Function KidnapEvent06A(String EventName, String argString, Float argNum, Form sender)
  Self.CorruptionExp(1.0) ; #DEBUG_LINE_NO:3700
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3701
  (BaboKidnapEvent as babokidnapevenscript).Nocollision(None) ; #DEBUG_LINE_NO:3702
  Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboExhaustedFront01") ; #DEBUG_LINE_NO:3704
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3705
  (BaboKidnapEvent as babokidnapevenscript).YouGotSpotted(1) ; #DEBUG_LINE_NO:3706
EndFunction

Function KidnapEvent06B(String EventName, String argString, Float argNum, Form sender)
  Self.CorruptionExp(1.0) ; #DEBUG_LINE_NO:3710
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3711
  Self.LosingControl() ; #DEBUG_LINE_NO:3712
  (BaboKidnapEvent as babokidnapevenscript).StartUptheEvent(1) ; #DEBUG_LINE_NO:3714
  (BaboKidnapEvent as babokidnapevenscript).YouGotSpotted(1) ; #DEBUG_LINE_NO:3715
EndFunction

Function KidnapEvent06C(String EventName, String argString, Float argNum, Form sender)
  Self.LewdnessExp(6.0) ; #DEBUG_LINE_NO:3719
  Self.CorruptionExp(8.0) ; #DEBUG_LINE_NO:3720
  Self.TraumaExp(2.0) ; #DEBUG_LINE_NO:3721
  Self.AddSexCount(6) ; #DEBUG_LINE_NO:3722
  Self.AddGroupSexCount(3) ; #DEBUG_LINE_NO:3723
  Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboExhaustedFront01") ; #DEBUG_LINE_NO:3724
  Utility.Wait(1.0) ; #DEBUG_LINE_NO:3725
  BaboKidnapEventYouAreTrappedSnareRopeIMCAfterSex.forcestart() ; #DEBUG_LINE_NO:3726
EndFunction

Function KidnapEvent06D(String EventName, String argString, Float argNum, Form sender)
  Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboExhaustedFront01") ; #DEBUG_LINE_NO:3730
  Utility.Wait(1.0) ; #DEBUG_LINE_NO:3731
  (BaboKidnapEvent as babokidnapevenscript).YouGotSpotted(0) ; #DEBUG_LINE_NO:3732
EndFunction

Function KidnapEvent06F(String EventName, String argString, Float argNum, Form sender)
  Self.CorruptionExp(1.0) ; #DEBUG_LINE_NO:3736
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3737
  (BaboKidnapEvent as babokidnapevenscript).Nocollision(None) ; #DEBUG_LINE_NO:3738
  Debug.SendAnimationEvent(PlayerRef as ObjectReference, "Babo_DeathStart") ; #DEBUG_LINE_NO:3740
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3741
  (BaboKidnapEvent as babokidnapevenscript).YouGotSpotted(0) ; #DEBUG_LINE_NO:3742
EndFunction

Function BaboKidnapPunishment06A(String EventName, String argString, Float argNum, Form sender)
  Self.CorruptionExp(1.0) ; #DEBUG_LINE_NO:3746
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3747
  (BaboKidnapEvent as babokidnapevenscript).Nocollision(None) ; #DEBUG_LINE_NO:3748
  Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboExhaustedFront01") ; #DEBUG_LINE_NO:3750
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3751
  (BaboKidnapEvent as babokidnapevenscript).YouGotSpotted(0) ; #DEBUG_LINE_NO:3752
EndFunction

Function KidnapEvent10A(String EventName, String argString, Float argNum, Form sender)
  Self.CorruptionExp(1.0) ; #DEBUG_LINE_NO:3756
  Self.AddGroupSexCount(2) ; #DEBUG_LINE_NO:3757
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3758
  (BaboKidnapEvent as babokidnapevenscript).Nocollision(None) ; #DEBUG_LINE_NO:3759
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3760
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3761
  (BaboKidnapEvent as babokidnapevenscript).YouGotSpotted(1) ; #DEBUG_LINE_NO:3762
EndFunction

Function KidnapEvent10B(String EventName, String argString, Float argNum, Form sender)
  Self.CorruptionExp(1.0) ; #DEBUG_LINE_NO:3766
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3767
  (BaboKidnapEvent as babokidnapevenscript).Nocollision(None) ; #DEBUG_LINE_NO:3768
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3769
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3770
  (BaboKidnapEvent as babokidnapevenscript).YouGotSpotted(1) ; #DEBUG_LINE_NO:3771
EndFunction

Function KidnapEvent20A(String EventName, String argString, Float argNum, Form sender)
  Self.CorruptionExp(2.0) ; #DEBUG_LINE_NO:3775
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3776
  Self.LosingControl() ; #DEBUG_LINE_NO:3777
  Debug.SendAnimationEvent(PlayerRef as ObjectReference, "BaboFaintFStart") ; #DEBUG_LINE_NO:3778
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3779
  (BaboKidnapEvent as babokidnapevenscript).BaboKidnapScenePlay(3) ; #DEBUG_LINE_NO:3780
EndFunction

Function KidnapEvent20B(String EventName, String argString, Float argNum, Form sender)
  Self.CorruptionExp(1.0) ; #DEBUG_LINE_NO:3784
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3785
  Self.LosingControl() ; #DEBUG_LINE_NO:3786
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3787
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3788
  (BaboKidnapEvent as babokidnapevenscript).BaboKidnapScenePlay(6) ; #DEBUG_LINE_NO:3790
EndFunction

Function KidnapEvent20C(String EventName, String argString, Float argNum, Form sender)
  Self.CorruptionExp(1.0) ; #DEBUG_LINE_NO:3794
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3795
  Self.LosingControl() ; #DEBUG_LINE_NO:3796
  Self.RandomExhaustionIdle(PlayerRef) ; #DEBUG_LINE_NO:3797
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3798
  (BaboKidnapEvent as babokidnapevenscript).BaboKidnapScenePlay(7) ; #DEBUG_LINE_NO:3799
EndFunction

Function KidnapEvent20D(String EventName, String argString, Float argNum, Form sender)
  Self.CorruptionExp(1.0) ; #DEBUG_LINE_NO:3803
  Utility.Wait(2.0) ; #DEBUG_LINE_NO:3804
  Self.LosingControl() ; #DEBUG_LINE_NO:3805
  (BaboKidnapEvent as babokidnapevenscript).BaboKidnapScenePlay(8) ; #DEBUG_LINE_NO:3806
EndFunction

Function AnimalCareEventAfterSex(String EventName, String argString, Float argNum, Form sender)
  BaboSpectatorWOEnemyScript.stop() ; #DEBUG_LINE_NO:3811
  BaboEventAnimalCare.setstage(70) ; #DEBUG_LINE_NO:3812
EndFunction

Function AnimalCareEventMarkarthStage08Sex(String EventName, String argString, Float argNum, Form sender)
  Self.BEventAnimalCareMarkarthScenePlay(6) ; #DEBUG_LINE_NO:3817
  Actor Actor01 = SexLab.HookActors(argString)[0] ; #DEBUG_LINE_NO:3818
  Actor Actor02 = SexLab.HookActors(argString)[1] ; #DEBUG_LINE_NO:3819
  Self.SexCustomActor(Actor01, Actor02, None, None, None, "Aggressive", "CF", "Vagina", True, "Babo_AnimalCareEventMarkarthStage08SexB", "AnimalCareEventMarkarthStage08SexB", True) ; #DEBUG_LINE_NO:3820
EndFunction

Function AnimalCareEventMarkarthStage08SexB(String EventName, String argString, Float argNum, Form sender)
  BaboEventAnimalCareMarkarth.setstage(10) ; #DEBUG_LINE_NO:3825
EndFunction

Function AnimalCareEventMarkarthStage30Sex(String EventName, String argString, Float argNum, Form sender)
  BaboEventAnimalCareMarkarth.setstage(34) ; #DEBUG_LINE_NO:3829
EndFunction

Function AnimalCareEventMarkarthAfterSex(String EventName, String argString, Float argNum, Form sender)
  BaboSpectatorWOEnemyScript.stop() ; #DEBUG_LINE_NO:3834
  BaboEventAnimalCareMarkarthScene02.stop() ; #DEBUG_LINE_NO:3835
  BaboEventAnimalCareMarkarth.setstage(55) ; #DEBUG_LINE_NO:3836
EndFunction

Function CustomMFGPain(Actor akactor, Int iindex, Bool bmouth = true, Bool bgag = false)
  If iindex == 0 ; #DEBUG_LINE_NO:3840
    (BaboMonitorScript as babodiamonitorscript).Backtoinitial(akactor) ; #DEBUG_LINE_NO:3841
  Else
    (BaboMonitorScript as babodiamonitorscript).PainMenu(akactor, iindex, bmouth, bgag) ; #DEBUG_LINE_NO:3843
  EndIf
EndFunction

Function CustomMFGAhe(Actor akactor, Int iindex, Bool bmouth = true, Bool bgag = false)
  If iindex == 0 ; #DEBUG_LINE_NO:3848
    (BaboMonitorScript as babodiamonitorscript).Backtoinitial(akactor) ; #DEBUG_LINE_NO:3849
  Else
    (BaboMonitorScript as babodiamonitorscript).AheMenu(akactor, iindex, bmouth, bgag) ; #DEBUG_LINE_NO:3851
  EndIf
EndFunction

Function MFGGag(Actor akactor, Int iindex)
  (BaboMonitorScript as babodiamonitorscript).GagPhoneme(akactor, iindex) ; #DEBUG_LINE_NO:3856
EndFunction

Function BountyReward(Int CrimeCase)
  If CrimeCase == 1 ; #DEBUG_LINE_NO:3860
    PlayerRef.Additem(Gold001 as Form, 700, False) ; #DEBUG_LINE_NO:3861
    PlayerRef.RemoveItem(BaboBountyRingSerialKiller as Form, 1, False, None) ; #DEBUG_LINE_NO:3862
    Self.ReputationIncrease(10, 20) ; #DEBUG_LINE_NO:3863
  EndIf
EndFunction

Function excludeActorAggr(Form toExclude)
  If BaboYamete.getvalue() == 1 as Float ; #DEBUG_LINE_NO:3872
    jsonutil.FormListAdd("../Yamete/excluded.json", "actorsAggr", toExclude, False) ; #DEBUG_LINE_NO:3873
  EndIf
EndFunction

Function ConfidenceExp(Float Mult)
  BDMScript.CalcConfidenceExpGain(Mult) ; #DEBUG_LINE_NO:3883
EndFunction

Function CorruptionExpLoss(Float Mult)
  BDMScript.CalcCorruptionExpLoss(Mult) ; #DEBUG_LINE_NO:3887
EndFunction

Function CorruptionExp(Float Mult)
  BDMScript.CalcCorruptionExpGain(Mult) ; #DEBUG_LINE_NO:3891
EndFunction

Function TraumaExp(Float Mult)
  BDMScript.CalcTraumaExpGain(Mult) ; #DEBUG_LINE_NO:3895
EndFunction

Function TraumaExpLoss(Float Mult)
  BDMScript.CalcTraumaExpLoss(Mult) ; #DEBUG_LINE_NO:3899
EndFunction

Function LewdnessExp(Float Mult)
  BDMScript.CalcLewdnessExpGain(Mult) ; #DEBUG_LINE_NO:3903
EndFunction

Function LewdnessExpLoss(Float Mult)
  BDMScript.CalcLewdnessExpLoss(Mult) ; #DEBUG_LINE_NO:3907
EndFunction

Function CreatureTraumaExp(Float Mult)
  BDMScript.CalcCreatureTraumaExpGain(Mult) ; #DEBUG_LINE_NO:3911
EndFunction

Function CreatureTraumaExpLoss(Float Mult)
  BDMScript.CalcCreatureTraumaExpLoss(Mult) ; #DEBUG_LINE_NO:3915
EndFunction

Function ReputationBitchCreature(Int RB)
  (BaboReputationScript as baboreputationmasterscript).CreatureSexReputation(RB) ; #DEBUG_LINE_NO:3919
EndFunction

Function ReputationRieklingThirskIncrease(Int RB)
  (BaboReputationScript as baboreputationmasterscript).IncreaseReputationRieklingThirsk(RB) ; #DEBUG_LINE_NO:3923
EndFunction

Function ReputationBitchIncrease(Int RB)
  (BaboReputationScript as baboreputationmasterscript).IncreaseReputationBitch(RB as Float) ; #DEBUG_LINE_NO:3927
EndFunction

Function ReputationBitchDecrease(Int RB)
  (BaboReputationScript as baboreputationmasterscript).DecreaseReputationBitch(RB as Float) ; #DEBUG_LINE_NO:3931
EndFunction

Function ReputationBitchRatioModify(Float ratio)
  (BaboReputationScript as baboreputationmasterscript).ModifyReputationBitchRatio(ratio) ; #DEBUG_LINE_NO:3935
EndFunction

Function ReputationIncrease(Int RP, Int FavorRP)
  (BaboReputationScript as baboreputationmasterscript).IncreaseReputation(RP, FavorRP) ; #DEBUG_LINE_NO:3939
EndFunction

Function ReputationDecrease(Int RP, Int FavorRP)
  (BaboReputationScript as baboreputationmasterscript).DecreaseReputation(RP, FavorRP) ; #DEBUG_LINE_NO:3943
EndFunction

Function ReputationRatioModify(Float ratio)
  (BaboReputationScript as baboreputationmasterscript).ModifyReputationRatio(ratio) ; #DEBUG_LINE_NO:3947
EndFunction

Function AddSexCount(Int Count)
  (BaboReputationScript as baboreputationmasterscript).SexCount(Count) ; #DEBUG_LINE_NO:3952
EndFunction

Function AddGroupSexCount(Int Count)
  (BaboReputationScript as baboreputationmasterscript).SexCountgangbang(Count) ; #DEBUG_LINE_NO:3956
EndFunction

Function PlusRescueCount(Int num)
  (BaboRescuingSlavesScript as baboslaverescuescript).PlusRescueCount(num) ; #DEBUG_LINE_NO:3972
EndFunction

Function MinusRescueCount(Int num)
  (BaboRescuingSlavesScript as baboslaverescuescript).MinusRescueCount(num) ; #DEBUG_LINE_NO:3976
EndFunction

Function SetSLAArousal(Actor akactor, Int slaarousal)
  (sla_Framework as slaframeworkscr).SetActorExposure(akactor, slaarousal) ; #DEBUG_LINE_NO:3980
EndFunction

Bool Function SetRandomCharacterRank(Actor akactor)
  Int ichance = Utility.randomint(0, 100) ; #DEBUG_LINE_NO:3984
  If !akactor.isinfaction(SLAX_AggressiveFaction) ; #DEBUG_LINE_NO:3986
    Int icharacter
    If ichance < 25 ; #DEBUG_LINE_NO:3987
      icharacter = 0 ; #DEBUG_LINE_NO:3988
    ElseIf ichance < 50 ; #DEBUG_LINE_NO:3989
      icharacter = 1 ; #DEBUG_LINE_NO:3990
    ElseIf ichance < 85 ; #DEBUG_LINE_NO:3991
      icharacter = 2 ; #DEBUG_LINE_NO:3992
    Else
      icharacter = 3 ; #DEBUG_LINE_NO:3994
    EndIf
    Self.SetChracterRank(akactor, icharacter) ; #DEBUG_LINE_NO:3996
    Return True ; #DEBUG_LINE_NO:3997
  Else
    Return False ; #DEBUG_LINE_NO:3999
  EndIf
EndFunction

Function SetBehaviorPattern(Actor akactor, Int rank)
  Int randomi = Utility.randomint(0, rank) ; #DEBUG_LINE_NO:4004
  akactor.addtofaction(BaboBehaviorPatternFaction) ; #DEBUG_LINE_NO:4005
  akactor.setfactionrank(BaboBehaviorPatternFaction, randomi) ; #DEBUG_LINE_NO:4006
EndFunction

Function SetChracterRank(Actor akactor, Int rank)
  akactor.addtofaction(SLAX_AggressiveFaction) ; #DEBUG_LINE_NO:4010
  akactor.setfactionrank(SLAX_AggressiveFaction, rank) ; #DEBUG_LINE_NO:4011
EndFunction

Bool Function IsactorRapist(Actor akactor, Int diminishchance, Bool bcriminal)
  If akactor.isinfaction(SLAX_RapistFaction) ; #DEBUG_LINE_NO:4015
    Return True ; #DEBUG_LINE_NO:4016
  ElseIf Self.DefineRapist(akactor, Self.RollRapeChance(akactor, diminishchance), 300, True) ; #DEBUG_LINE_NO:4019
    If bcriminal ; #DEBUG_LINE_NO:4020
      akactor.addtofaction(BaboWEAggressiveRapistFaction) ; #DEBUG_LINE_NO:4021
    EndIf
    Return True ; #DEBUG_LINE_NO:4023
  Else
    Return False ; #DEBUG_LINE_NO:4025
  EndIf
EndFunction

Int Function RollRapeChance(Actor akRef, Int diminishchance)
  Int chance = 0 ; #DEBUG_LINE_NO:4031
  Int CharacterRank = 0 ; #DEBUG_LINE_NO:4032
  Int ArousalRank = akRef.getfactionrank(sla_Arousal) ; #DEBUG_LINE_NO:4033
  Self.SetRandomCharacterRank(akRef) ; #DEBUG_LINE_NO:4034
  If akRef.isinfaction(SLAX_AggressiveFaction) ; #DEBUG_LINE_NO:4035
    CharacterRank = akRef.getfactionrank(SLAX_AggressiveFaction) ; #DEBUG_LINE_NO:4036
  EndIf
  chance += Self.TimeCalc(True) ; #DEBUG_LINE_NO:4039
  chance += Self.NudeCalc(PlayerRef) ; #DEBUG_LINE_NO:4040
  chance += Self.AppearanceCalc() ; #DEBUG_LINE_NO:4041
  chance += ArousalRank ; #DEBUG_LINE_NO:4042
  chance += CharacterRank * 5 ; #DEBUG_LINE_NO:4043
  chance += BaboReputationBitch.getvalue() as Int ; #DEBUG_LINE_NO:4044
  chance -= BaboReputation.getvalue() as Int ; #DEBUG_LINE_NO:4045
  chance -= diminishchance ; #DEBUG_LINE_NO:4046
  BaboRapeChanceGlobal.setvalue(chance as Float) ; #DEBUG_LINE_NO:4047
  Return chance ; #DEBUG_LINE_NO:4048
EndFunction

Bool Function DefineRapistCriminal(Actor akactor, Int chance, Int maxchance, Bool givefaction)
  Int diceint = Utility.randomint(0, maxchance) ; #DEBUG_LINE_NO:4052
  If diceint < chance ; #DEBUG_LINE_NO:4053
    If givefaction ; #DEBUG_LINE_NO:4054
      akactor.addtofaction(BaboWEAggressiveRapistFaction) ; #DEBUG_LINE_NO:4055
      akactor.addtofaction(SLAX_RapistFaction) ; #DEBUG_LINE_NO:4056
    EndIf
    Return True ; #DEBUG_LINE_NO:4058
  Else
    Return False ; #DEBUG_LINE_NO:4060
  EndIf
EndFunction

Bool Function DefineRapist(Actor akactor, Int chance, Int maxchance, Bool givefaction)
  Int diceint = Utility.randomint(0, maxchance) ; #DEBUG_LINE_NO:4066
  If diceint < chance ; #DEBUG_LINE_NO:4067
    If givefaction ; #DEBUG_LINE_NO:4068
      akactor.addtofaction(BaboRapistFaction) ; #DEBUG_LINE_NO:4069
      akactor.addtofaction(SLAX_RapistFaction) ; #DEBUG_LINE_NO:4070
    EndIf
    Return True ; #DEBUG_LINE_NO:4072
  Else
    Return False ; #DEBUG_LINE_NO:4074
  EndIf
EndFunction

Function PurgeRapistFactions(Actor akactor)
  akactor.removefromfaction(BaboRapistFaction) ; #DEBUG_LINE_NO:4080
  akactor.removefromfaction(SLAX_RapistFaction) ; #DEBUG_LINE_NO:4081
EndFunction

Int Function CalcPlayerAttractiveness()
  Int chance = 0 ; #DEBUG_LINE_NO:4085
  chance += Self.NudeCalc(PlayerRef) ; #DEBUG_LINE_NO:4086
  chance += Self.AppearanceCalc() ; #DEBUG_LINE_NO:4087
  Return chance ; #DEBUG_LINE_NO:4089
EndFunction

Function PastTime(Int itime)
  Float CurrentTime = GameHour.getvalue() ; #DEBUG_LINE_NO:4093
  CurrentTime += itime as Float ; #DEBUG_LINE_NO:4094
  If CurrentTime > 24 as Float ; #DEBUG_LINE_NO:4095
    CurrentTime -= 24 as Float ; #DEBUG_LINE_NO:4096
  EndIf
  GameHour.setvalue(CurrentTime) ; #DEBUG_LINE_NO:4098
EndFunction

Int Function TimeCalc(Bool enableMinus = true)
  Float hour = GameHour.getvalue() ; #DEBUG_LINE_NO:4103
  If (hour >= 22 as Float) || (hour < 2 as Float) ; #DEBUG_LINE_NO:4105
    Return 25 ; #DEBUG_LINE_NO:4106
  ElseIf (hour >= 20 as Float) || (hour < 4 as Float) ; #DEBUG_LINE_NO:4107
    Return 20 ; #DEBUG_LINE_NO:4108
  ElseIf (hour >= 18 as Float) || (hour < 6 as Float) ; #DEBUG_LINE_NO:4109
    Return 15 ; #DEBUG_LINE_NO:4110
  ElseIf (hour > 8 as Float) && (hour < 16 as Float) ; #DEBUG_LINE_NO:4111
    Return -25 ; #DEBUG_LINE_NO:4112
  EndIf
  Return 0 ; #DEBUG_LINE_NO:4115
EndFunction

Int Function NudeCalc(Actor akRef)
  If akRef.WornHasKeyword(SLA_ArmorPretty) ; #DEBUG_LINE_NO:4119
    Return 5 ; #DEBUG_LINE_NO:4120
  ElseIf akRef.WornHasKeyword(EroticArmor) || akRef.isequipped(sla_NakedArmorList) ; #DEBUG_LINE_NO:4121
    Return 25 ; #DEBUG_LINE_NO:4122
  ElseIf akRef.WornHasKeyword(SLA_ArmorSpendex) || akRef.WornHasKeyword(SLA_ArmorLewdLeotard) ; #DEBUG_LINE_NO:4123
    Return 35 ; #DEBUG_LINE_NO:4124
  ElseIf akRef.WornHasKeyword(SLA_ArmorHalfNakedBikini) || akRef.WornHasKeyword(SLA_ArmorCurtain) ; #DEBUG_LINE_NO:4125
    Return 50 ; #DEBUG_LINE_NO:4126
  ElseIf akRef.WornHasKeyword(SLA_ArmorHalfNaked) || akRef.WornHasKeyword(SLA_ArmorTransparent) ; #DEBUG_LINE_NO:4127
    Return 60 ; #DEBUG_LINE_NO:4128
  ElseIf !akRef.WornHasKeyword(ArmorCuirass) && !akRef.WornHasKeyword(ClothingBody) ; #DEBUG_LINE_NO:4129
    Return 70 ; #DEBUG_LINE_NO:4130
  Else
    Return -30 ; #DEBUG_LINE_NO:4132
  EndIf
EndFunction

Int Function AppearanceCalc()
  Float value = 0 as Float ; #DEBUG_LINE_NO:4138
  Float AppearanceValue = BaboPlayerAppearanceValue.getvalue() ; #DEBUG_LINE_NO:4139
  Float BreastsValue = BaboPlayerBreastsValue.getvalue() ; #DEBUG_LINE_NO:4140
  Float ButtsValue = BaboPlayerButtocksValue.getvalue() ; #DEBUG_LINE_NO:4141
  value = AppearanceValue + BreastsValue + ButtsValue ; #DEBUG_LINE_NO:4143
  BaboPlayerAppearanceTotalValue.setvalue(value) ; #DEBUG_LINE_NO:4144
  value /= 3 as Float ; #DEBUG_LINE_NO:4145
  Return value as Int ; #DEBUG_LINE_NO:4146
EndFunction

Function ModifySexlabStats(Actor akactor, Int femaleint = 0, Int maleint = 1, Int victimint = 1, Int AnalNum = 0, Int OralNum = 0, Int VaginalNum = 1)
  (SexLabQuestFramework as sslactorstats).AdjustSkill(akactor, "Females", femaleint) ; #DEBUG_LINE_NO:4151
  (SexLabQuestFramework as sslactorstats).AdjustSkill(akactor, "Males", maleint) ; #DEBUG_LINE_NO:4152
  (SexLabQuestFramework as sslactorstats).AdjustSkill(akactor, "Victim", victimint) ; #DEBUG_LINE_NO:4153
  (SexLabQuestFramework as sslactorstats).AdjustSkill(akactor, "Anal", AnalNum) ; #DEBUG_LINE_NO:4154
  (SexLabQuestFramework as sslactorstats).AdjustSkill(akactor, "Vaginal", VaginalNum) ; #DEBUG_LINE_NO:4155
  (SexLabQuestFramework as sslactorstats).AdjustSkill(akactor, "Oral", OralNum) ; #DEBUG_LINE_NO:4156
EndFunction

Function QTESoloAnimation(Actor Victim, Bool animate = True, String VictimAnim, Bool GainControl = false)
  If animate ; #DEBUG_LINE_NO:4160
    Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:4162
    If Game.GetCameraState() == 0 ; #DEBUG_LINE_NO:4164
      Game.ForceThirdPerson() ; #DEBUG_LINE_NO:4165
    EndIf
    BaboSexControllerXmarker.moveto(Victim as ObjectReference, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:4168
    Float AngleZ = Victim.GetAngleZ() ; #DEBUG_LINE_NO:4169
    Victim.SetVehicle(BaboSexControllerXmarker) ; #DEBUG_LINE_NO:4170
    If GainControl ; #DEBUG_LINE_NO:4172
      Debug.SendAnimationEvent(Victim as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:4173
    EndIf
    Utility.Wait(1.0) ; #DEBUG_LINE_NO:4176
    Debug.SendAnimationEvent(Victim as ObjectReference, VictimAnim) ; #DEBUG_LINE_NO:4177
    isplaying = True ; #DEBUG_LINE_NO:4178
  Else
    If GainControl ; #DEBUG_LINE_NO:4180
      Victim.SetVehicle(None) ; #DEBUG_LINE_NO:4181
      Game.EnablePlayerControls(True, True, True, True, True, True, True, True, 0) ; #DEBUG_LINE_NO:4182
      Game.SetPlayerAIDriven(False) ; #DEBUG_LINE_NO:4183
    EndIf
    Debug.SendAnimationEvent(Victim as ObjectReference, VictimAnim) ; #DEBUG_LINE_NO:4187
    isplaying = False ; #DEBUG_LINE_NO:4188
  EndIf
EndFunction

Function QTEAnimation(Actor Victim, Actor Aggressor, Bool animate = True, String VictimAnim, String AggressorAnim, Bool GainControl = false)
  If animate ; #DEBUG_LINE_NO:4194
    Self.PrecisionCheck(Aggressor, True) ; #DEBUG_LINE_NO:4195
    Self.PrecisionCheck(Victim, True) ; #DEBUG_LINE_NO:4196
    actorutil.AddPackageOverride(Aggressor, BaboDoNothing, 100, 1) ; #DEBUG_LINE_NO:4197
    Aggressor.EvaluatePackage() ; #DEBUG_LINE_NO:4198
    Aggressor.SetRestrained(True) ; #DEBUG_LINE_NO:4199
    Aggressor.SetDontMove(True) ; #DEBUG_LINE_NO:4200
    Victim.SetDontMove(True) ; #DEBUG_LINE_NO:4201
    Game.SetPlayerAIDriven(True) ; #DEBUG_LINE_NO:4202
    If Game.GetCameraState() == 0 ; #DEBUG_LINE_NO:4204
      Game.ForceThirdPerson() ; #DEBUG_LINE_NO:4205
    EndIf
    BaboSexControllerXmarker.moveto(Aggressor as ObjectReference, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:4208
    Float AngleZ = Victim.GetAngleZ() ; #DEBUG_LINE_NO:4209
    Aggressor.moveto(Victim as ObjectReference, 0.0 * Math.sin(AngleZ), 0.0 * Math.cos(AngleZ), 0.0, True) ; #DEBUG_LINE_NO:4210
    Victim.SetVehicle(BaboSexControllerXmarker) ; #DEBUG_LINE_NO:4211
    Aggressor.SetVehicle(BaboSexControllerXmarker) ; #DEBUG_LINE_NO:4212
    If GainControl ; #DEBUG_LINE_NO:4214
      Debug.SendAnimationEvent(Aggressor as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:4215
      Debug.SendAnimationEvent(Victim as ObjectReference, "IdleForceDefaultState") ; #DEBUG_LINE_NO:4216
    EndIf
    Utility.Wait(1.0) ; #DEBUG_LINE_NO:4219
    Aggressor.moveto(Victim as ObjectReference, 0.0 * Math.sin(AngleZ), 0.0 * Math.cos(AngleZ), 0.0, True) ; #DEBUG_LINE_NO:4220
    Debug.SendAnimationEvent(Victim as ObjectReference, VictimAnim) ; #DEBUG_LINE_NO:4221
    Debug.SendAnimationEvent(Aggressor as ObjectReference, AggressorAnim) ; #DEBUG_LINE_NO:4222
    isplaying = True ; #DEBUG_LINE_NO:4223
  Else
    Aggressor.SetVehicle(None) ; #DEBUG_LINE_NO:4225
    If GainControl ; #DEBUG_LINE_NO:4226
      Victim.SetVehicle(None) ; #DEBUG_LINE_NO:4227
      Game.EnablePlayerControls(True, True, True, True, True, True, True, True, 0) ; #DEBUG_LINE_NO:4228
      Game.SetPlayerAIDriven(False) ; #DEBUG_LINE_NO:4229
      Victim.SetRestrained(False) ; #DEBUG_LINE_NO:4230
      Victim.SetDontMove(False) ; #DEBUG_LINE_NO:4231
    EndIf
    Aggressor.SetRestrained(False) ; #DEBUG_LINE_NO:4233
    Aggressor.SetDontMove(False) ; #DEBUG_LINE_NO:4234
    actorutil.RemovePackageOverride(Aggressor, BaboDoNothing) ; #DEBUG_LINE_NO:4235
    Debug.SendAnimationEvent(Aggressor as ObjectReference, AggressorAnim) ; #DEBUG_LINE_NO:4237
    Debug.SendAnimationEvent(Victim as ObjectReference, VictimAnim) ; #DEBUG_LINE_NO:4238
    isplaying = False ; #DEBUG_LINE_NO:4239
    Self.PrecisionCheck(Aggressor, False) ; #DEBUG_LINE_NO:4240
    Self.PrecisionCheck(Victim, False) ; #DEBUG_LINE_NO:4241
  EndIf
EndFunction

Function EjaculationSound(ObjectReference akSource, Int Sort)
  If Sort == 1 ; #DEBUG_LINE_NO:4246
    BaboEjaculationInnerMarker.play(akSource) ; #DEBUG_LINE_NO:4247
  ElseIf Sort == 2 ; #DEBUG_LINE_NO:4248
    BaboEjaculationOuterMarker.play(akSource) ; #DEBUG_LINE_NO:4249
  EndIf
EndFunction

Function MiscSound(ObjectReference akSource, Int Sort)
  If Sort == 1 ; #DEBUG_LINE_NO:4254
    BaboPunchMarker.play(akSource) ; #DEBUG_LINE_NO:4255
  ElseIf Sort == 2 ; #DEBUG_LINE_NO:4256
    BaboRopeRustleSoundMarker.play(akSource) ; #DEBUG_LINE_NO:4257
  ElseIf Sort == 3 ; #DEBUG_LINE_NO:4258
    BaboDoorKnobMarker.play(akSource) ; #DEBUG_LINE_NO:4259
  EndIf
EndFunction

Function UseSexlabVoice(Actor ActorRef, Bool isvictim)
  SexLab.PickVoice(ActorRef).Moan(ActorRef, 1, isvictim) ; #DEBUG_LINE_NO:4264
EndFunction

Function HangingActor(Actor akactor, ObjectReference Rope, Bool Autoplay, Bool Lethal)
  (BaboHangingQuest as babohangingcontrolscript).GallowStateStage(0) ; #DEBUG_LINE_NO:4268
  (BaboHangingQuest as babohangingcontrolscript).VerifyActor(akactor) ; #DEBUG_LINE_NO:4269
  (BaboHangingQuest as babohangingcontrolscript).VerifyRope(Rope) ; #DEBUG_LINE_NO:4270
  (BaboHangingQuest as babohangingcontrolscript).VerifyAutoplay(Autoplay) ; #DEBUG_LINE_NO:4271
  (BaboHangingQuest as babohangingcontrolscript).VerifyLethal(Lethal) ; #DEBUG_LINE_NO:4272
  (BaboHangingQuest as babohangingcontrolscript).Initialize() ; #DEBUG_LINE_NO:4273
EndFunction

Function HangingStateChange(Int Changeint)
  (BaboHangingQuest as babohangingcontrolscript).GallowStateStage(Changeint) ; #DEBUG_LINE_NO:4277
EndFunction

Function ShowHelpMessage()
  If BDMCM.BaboResistType == "$Attack" ; #DEBUG_LINE_NO:4281
    BaboQTEAtkMess.ShowAsHelpMessage("", 2 as Float, 1 as Float, 1) ; #DEBUG_LINE_NO:4282
  Else
    BaboQTEStrafeMess.ShowAsHelpMessage("", 2 as Float, 1 as Float, 1) ; #DEBUG_LINE_NO:4284
  EndIf
EndFunction

Int Function GetActorValueCustom(Actor akactor, String AVList)
  Int AVint = akactor.GetActorValue(AVList) as Int ; #DEBUG_LINE_NO:4290
  Return AVint ; #DEBUG_LINE_NO:4291
EndFunction

Bool Function CustomResistChance(Actor akactor, Int MinChance, Int maxchance, String avi)
  Int randomi = Utility.randomint(MinChance, maxchance) ; #DEBUG_LINE_NO:4296
  Int PRChance = Self.GetActorValueCustom(akactor, avi) ; #DEBUG_LINE_NO:4297
  If randomi <= PRChance ; #DEBUG_LINE_NO:4299
    Return True ; #DEBUG_LINE_NO:4300
  Else
    Return False ; #DEBUG_LINE_NO:4302
  EndIf
EndFunction

Bool Function PoisonResistChance(Actor akactor, Int MinChance, Int maxchance)
  Int randomi = Utility.randomint(MinChance, maxchance) ; #DEBUG_LINE_NO:4309
  Int PRChance = Self.GetActorValueCustom(akactor, "PoisonResist") ; #DEBUG_LINE_NO:4310
  If randomi <= PRChance ; #DEBUG_LINE_NO:4312
    Return True ; #DEBUG_LINE_NO:4313
  Else
    Return False ; #DEBUG_LINE_NO:4315
  EndIf
EndFunction

Bool Function DiseaseResistChance(Actor akactor, Int MinChance, Int maxchance)
  Int randomi = Utility.randomint(MinChance, maxchance) ; #DEBUG_LINE_NO:4322
  Int PRChance = Self.GetActorValueCustom(akactor, "DiseaseResist") ; #DEBUG_LINE_NO:4323
  If randomi <= PRChance ; #DEBUG_LINE_NO:4325
    Return True ; #DEBUG_LINE_NO:4326
  Else
    Return False ; #DEBUG_LINE_NO:4328
  EndIf
EndFunction

Function DeleteWhenAbleWithTimeout(Actor[] actors, Float afSeconds = 30.0)
  Int i = 0 ; #DEBUG_LINE_NO:4339
  Bool Wait = False ; #DEBUG_LINE_NO:4340
  While afSeconds > 0 as Float ; #DEBUG_LINE_NO:4341
    i = 0 ; #DEBUG_LINE_NO:4342
    Wait = False ; #DEBUG_LINE_NO:4343
    While i < actors.Length ; #DEBUG_LINE_NO:4344
      If actors[i] ; #DEBUG_LINE_NO:4345
        If actors[i].GetParentCell() as Bool && actors[i].GetParentCell().IsAttached() ; #DEBUG_LINE_NO:4346
          Wait = True ; #DEBUG_LINE_NO:4347
        Else
          Debug.trace(((Self as String + " DeleteWhenAbleWithTimeout ") + actors[i] as String) + " in un attached cell - delete", 0) ; #DEBUG_LINE_NO:4349
          actors[i].Delete() ; #DEBUG_LINE_NO:4350
          actors[i] = None ; #DEBUG_LINE_NO:4351
        EndIf
      EndIf
      i += 1 ; #DEBUG_LINE_NO:4354
    EndWhile
    If Wait ; #DEBUG_LINE_NO:4356
      Utility.Wait(5 as Float) ; #DEBUG_LINE_NO:4357
      afSeconds -= 5 as Float ; #DEBUG_LINE_NO:4358
    Else
      Return  ; #DEBUG_LINE_NO:4360
    EndIf
  EndWhile
  i = 0 ; #DEBUG_LINE_NO:4364
  While i < actors.Length ; #DEBUG_LINE_NO:4365
    If actors[i] ; #DEBUG_LINE_NO:4366
      Debug.trace(((Self as String + " DeleteWhenAbleWithTimeout ") + actors[i] as String) + " is timeouted - delete", 0) ; #DEBUG_LINE_NO:4367
      actors[i].Delete() ; #DEBUG_LINE_NO:4368
    EndIf
    i += 1 ; #DEBUG_LINE_NO:4370
  EndWhile
EndFunction

Function StateChange(String StateString)
  Self.GotoState(StateString) ; #DEBUG_LINE_NO:4401
EndFunction

Function QTETextAbort()
  bQTETextAbort = True ; #DEBUG_LINE_NO:4405
  BaboWidgetTextController.stop() ; #DEBUG_LINE_NO:4406
  (BaboWidgetTextController as baboqtetextwidgetex).turnoff() ; #DEBUG_LINE_NO:4407
  (BaboKidnapEvent as babokidnapevenscript).QTESnareTrapFail() ; #DEBUG_LINE_NO:4408
EndFunction

Bool Function StartQTEText(Float limitTime, Float fdifficulty)
  String msg = jsonutil.getstringvalue(file, "baboqtetextfire", "") ; #DEBUG_LINE_NO:4427
  (BaboWidgetTextController as baboqtetextwidgetex).start() ; #DEBUG_LINE_NO:4428
  Utility.Wait(0.5) ; #DEBUG_LINE_NO:4429
  (BaboWidgetTextController as baboqtetextwidgetex).SetParameter(msg, fdifficulty) ; #DEBUG_LINE_NO:4430
  (BaboWidgetTextController as baboqtetextwidgetex).UpdateWidgetsAsync() ; #DEBUG_LINE_NO:4431
  Float qteStartTime = Utility.GetCurrentRealTime() ; #DEBUG_LINE_NO:4432
  Float qteElapsed = 0.0 ; #DEBUG_LINE_NO:4433
  While qteElapsed < limitTime && !(BaboWidgetTextController as baboqtetextwidgetex).IsSuccess ; #DEBUG_LINE_NO:4434
    qteElapsed = Utility.GetCurrentRealTime() - qteStartTime ; #DEBUG_LINE_NO:4435
    Utility.Wait(0.01) ; #DEBUG_LINE_NO:4436
  EndWhile
  Bool ret = (BaboWidgetTextController as baboqtetextwidgetex).IsSuccess ; #DEBUG_LINE_NO:4438
  Return ret ; #DEBUG_LINE_NO:4439
EndFunction

Function DefineStruggleActor(ReferenceAlias Aggressor)
  StruggleActor = Aggressor.GetReference() as Actor ; #DEBUG_LINE_NO:4443
EndFunction

Function ChangeLocationEvent07StateBegin(ReferenceAlias Aggressor)
  StruggleActor = Aggressor.GetReference() as Actor ; #DEBUG_LINE_NO:4447
  Self.GotoState("BaboCLEvent07Sub01") ; #DEBUG_LINE_NO:4448
EndFunction

Function ChangeLocationEvent07ScenarioStart()
  BaboChangeLocation07Variable.setvalue(0 as Float) ; #DEBUG_LINE_NO:4452
  BaboAssaultAttemptCountInstance.setvalue(0 as Float) ; #DEBUG_LINE_NO:4453
EndFunction

Function SturggleDifficulty(Float difficulty, String DamageValue = "", String DamageValue02 = "")
  PresetFillThreshold = difficulty ; #DEBUG_LINE_NO:4457
  DamagevalueString = DamageValue ; #DEBUG_LINE_NO:4458
  DamagevalueString02 = DamageValue02 ; #DEBUG_LINE_NO:4459
EndFunction

Function QTETextStart()
  bQTETextAbort = False ; #DEBUG_LINE_NO:4769
  Bool IsSuccess = Self.StartQTEText(BDMCM.BaboQTELimitTime, BDMCM.BaboQTEDifficulty) ; #DEBUG_LINE_NO:4770
  If bQTETextAbort ; #DEBUG_LINE_NO:4771
    Return  ; #DEBUG_LINE_NO:4772
  EndIf
  If IsSuccess ; #DEBUG_LINE_NO:4774
    BaboWidgetTextController.stop() ; #DEBUG_LINE_NO:4775
    (BaboWidgetTextController as baboqtetextwidgetex).turnoff() ; #DEBUG_LINE_NO:4776
  Else
    BaboWidgetTextController.stop() ; #DEBUG_LINE_NO:4777
    (BaboWidgetTextController as baboqtetextwidgetex).turnoff() ; #DEBUG_LINE_NO:4778
  EndIf
EndFunction

Function ResistSuccess(Actor akactor)
  ; Empty function
EndFunction

Function ResistFailed(Actor akactor)
  ; Empty function
EndFunction

Function OnKeyDown(Int KeyCode)
  ; Empty function
EndFunction

Function StruggleBarDisplay(Bool Display = True)
  ; Empty function
EndFunction

Function Restore()
  ; Empty function
EndFunction

;-- State -------------------------------------------
State BaboCLEvent07Sub01

  Function OnKeyDown(Int KeyCode)
    If KeyCode == StrafeL && LeftRight
      LeftRight = False
      FillDifficulty += FillThreshold
      (BaboWidgetController as baboqtewidgetex).Percent = FillDifficulty
    ElseIf KeyCode == StrafeR && !LeftRight
      LeftRight = True
      FillDifficulty += FillThreshold
      (BaboWidgetController as baboqtewidgetex).Percent = FillDifficulty
    EndIf
  EndFunction

  Event OnUpdate()
    Time += 1
    If (BaboWidgetController as baboqtewidgetex).Percent >= 1.0
      Self.ResistSuccess(StruggleActor)
      Return 
    ElseIf Time as Float > DownedTime
      Self.ResistFailed(StruggleActor)
      Return 
    EndIf
    (BaboWidgetController as baboqtewidgetex).Alpha = 100.0
    Self.RegisterForSingleUpdate(1.0)
  EndEvent

  Function ResistFailed(Actor akactor)
    If BaboAssaultAttemptCountInstance.getvalue() == 1 as Float
      Self.QTEAnimation(PlayerRef, StruggleActor, False, "BaboFaintFStart", "IdleForceDefaultState", False)
      BaboChangeLocationEvent07.setstage(60)
    ElseIf BaboAssaultAttemptCountInstance.getvalue() >= 2 as Float
      Self.QTEAnimation(PlayerRef, StruggleActor, False, "Babo_DeathStart", "IdleForceDefaultState", False)
      Self.ChangeLocationEvent07Messagebox(6)
      Self.BCLEvent07ScenePlay(6)
    EndIf
    Self.Restore()
  EndFunction

  Function ResistSuccess(Actor akactor)
    Self.QTEAnimation(PlayerRef, StruggleActor, False, "IdleForceDefaultState", "IdleForceDefaultState", True)
    If BaboAssaultAttemptCountInstance.getvalue() == 1 as Float
      BaboChangeLocationEvent07.setstage(32)
    ElseIf BaboAssaultAttemptCountInstance.getvalue() >= 2 as Float
      Self.BCLEvent07ScenePlay(5)
    EndIf
    Self.Restore()
  EndFunction

  Function Restore()
    SoundTime = 0
    Time = 0
    Self.StruggleBarDisplay(False)
    Self.GotoState("")
  EndFunction

  Function StruggleBarDisplay(Bool Display = True)
    If Display
      (BaboWidgetController as baboqtewidgetex).Alpha = 100.0
      If Game.UsingGamepad()
        StrafeL = 268
        StrafeR = 269
      ElseIf BDMCM.BaboResistType == "$Attack"
        StrafeL = input.GetMappedKey("Left Attack/Block", 255)
        StrafeR = input.GetMappedKey("Right Attack/Block", 255)
      Else
        StrafeL = input.GetMappedKey("Strafe Left", 255)
        StrafeR = input.GetMappedKey("Strafe Right", 255)
      EndIf
      Self.RegisterForKey(StrafeL)
      Self.RegisterForKey(StrafeR)
    Else
      (BaboWidgetController as baboqtewidgetex).Alpha = 0.0
      (BaboWidgetController as baboqtewidgetex).Percent = 0.0
      FillDifficulty = 0.0
      Self.UnregisterForKey(StrafeL)
      Self.UnregisterForKey(StrafeR)
    EndIf
  EndFunction

  Event onBeginState()
    BaboAssaultAttemptCountInstance.setvalue(BaboAssaultAttemptCountInstance.getvalue() + 1 as Float) ; #DEBUG_LINE_NO:4469
    If StruggleActor ; #DEBUG_LINE_NO:4470
      Self.QTEAnimation(PlayerRef, StruggleActor, True, "Babo_DrunkMF_A1_S1", "Babo_DrunkMF_A2_S1", False) ; #DEBUG_LINE_NO:4471
    EndIf
    Game.EnablePlayerControls(1 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0) ; #DEBUG_LINE_NO:4473
    Utility.Wait(1.5) ; #DEBUG_LINE_NO:4475
    DownedTime = 20.0 ; #DEBUG_LINE_NO:4476
    FillThreshold = 0.01 ; #DEBUG_LINE_NO:4477
    Self.StruggleBarDisplay(True) ; #DEBUG_LINE_NO:4478
    Self.RegisterForSingleUpdate(1.0) ; #DEBUG_LINE_NO:4479
  EndEvent
EndState

;-- State -------------------------------------------
State baboeventanimalcaremarkarthstate

  Function OnKeyDown(Int KeyCode)
    If KeyCode == StrafeL && LeftRight
      LeftRight = False
      FillDifficulty += FillThreshold
      (BaboWidgetController as baboqtewidgetex).Percent = FillDifficulty
    ElseIf KeyCode == StrafeR && !LeftRight
      LeftRight = True
      FillDifficulty += FillThreshold
      (BaboWidgetController as baboqtewidgetex).Percent = FillDifficulty
    EndIf
  EndFunction

  Event OnUpdate()
    Time += 1
    If (BaboWidgetController as baboqtewidgetex).Percent >= 1.0
      Self.ResistSuccess(StruggleActor)
      Return 
    ElseIf Time as Float > DownedTime
      Self.ResistFailed(StruggleActor)
      Return 
    EndIf
    (BaboWidgetController as baboqtewidgetex).Alpha = 100.0
    Self.RegisterForSingleUpdate(1.0)
  EndEvent

  Function ResistFailed(Actor akactor)
    Self.CreaturePairedAnimSequence(StruggleActor, PlayerRef, 3, "canine", "MountCanineFlankFail", "BaboMountCanineFlankFail")
    BaboEventAnimalCareMarkarth.setstage(8)
    Self.BEventAnimalCareMarkarthScenePlay(3)
    Self.Restore()
  EndFunction

  Function ResistSuccess(Actor akactor)
    Self.CreaturePairedAnimSequence(StruggleActor, PlayerRef, 3, "canine", "MountCanineFlankEscape", "BaboMountCanineFlankEscape")
    BaboEventAnimalCareMarkarth.setstage(7)
    Self.BEventAnimalCareMarkarthScenePlay(4)
    Self.Restore()
  EndFunction

  Function Restore()
    SoundTime = 0
    Time = 0
    Self.StruggleBarDisplay(False)
    Self.GotoState("")
  EndFunction

  Function StruggleBarDisplay(Bool Display = True)
    If Display
      (BaboWidgetController as baboqtewidgetex).Alpha = 100.0
      If Game.UsingGamepad()
        StrafeL = 268
        StrafeR = 269
      ElseIf BDMCM.BaboResistType == "$Attack"
        StrafeL = input.GetMappedKey("Left Attack/Block", 255)
        StrafeR = input.GetMappedKey("Right Attack/Block", 255)
      Else
        StrafeL = input.GetMappedKey("Strafe Left", 255)
        StrafeR = input.GetMappedKey("Strafe Right", 255)
      EndIf
      Self.RegisterForKey(StrafeL)
      Self.RegisterForKey(StrafeR)
    Else
      (BaboWidgetController as baboqtewidgetex).Alpha = 0.0
      (BaboWidgetController as baboqtewidgetex).Percent = 0.0
      FillDifficulty = 0.0
      Self.UnregisterForKey(StrafeL)
      Self.UnregisterForKey(StrafeR)
    EndIf
  EndFunction

  Event onBeginState()
    If StruggleActor ; #DEBUG_LINE_NO:4569
      Self.PairedMotionCreature(StruggleActor, PlayerRef, 3, "canine", True, True) ; #DEBUG_LINE_NO:4570
    EndIf
    Utility.Wait(1.5) ; #DEBUG_LINE_NO:4572
    DownedTime = 20.0 ; #DEBUG_LINE_NO:4573
    FillThreshold = 0.01 ; #DEBUG_LINE_NO:4574
    Self.StruggleBarDisplay(True) ; #DEBUG_LINE_NO:4575
    Self.RegisterForSingleUpdate(1.0) ; #DEBUG_LINE_NO:4576
  EndEvent
EndState

;-- State -------------------------------------------
State babofronthugstate

  Function OnKeyDown(Int KeyCode)
    SoundTime += 1
    If KeyCode == StrafeL && LeftRight && PlayerRef.GetActorValue(DamagevalueString) >= 1.0
      LeftRight = False
      FillDifficulty += FillThreshold
      PlayerRef.DamageActorValue(DamagevalueString, 1.0)
      (BaboWidgetController as baboqtewidgetex).Percent = FillDifficulty
    ElseIf KeyCode == StrafeR && !LeftRight && PlayerRef.GetActorValue(DamagevalueString) >= 1.0
      LeftRight = True
      FillDifficulty += FillThreshold
      PlayerRef.DamageActorValue(DamagevalueString, 1.0)
      (BaboWidgetController as baboqtewidgetex).Percent = FillDifficulty
    EndIf
  EndFunction

  Event OnUpdate()
    Time += 1
    If (BaboWidgetController as baboqtewidgetex).Percent >= 1.0
      Self.ResistSuccess(StruggleActor)
      Return 
    ElseIf Time as Float > DownedTime
      Self.ResistFailed(StruggleActor)
      Return 
    EndIf
    (BaboWidgetController as baboqtewidgetex).Alpha = 100.0
    Self.RegisterForSingleUpdate(1.0)
  EndEvent

  Function ResistFailed(Actor akactor)
    Self.EventPairMotion(akactor, 0, 0, 0, 0, True)
    Debug.SendAnimationEvent(PlayerRef as ObjectReference, "IdleForceDefaultState")
    Self.Restore()
  EndFunction

  Function ResistSuccess(Actor akactor)
    Self.EventPairMotion(akactor, 0, 0, 0, 0, True)
    Debug.SendAnimationEvent(PlayerRef as ObjectReference, "IdleForceDefaultState")
    Self.Restore()
  EndFunction

  Function Restore()
    Time = 0
    SoundTime = 0
    Self.StruggleBarDisplay(False)
    If BaboChangeLocationEvent08.isrunning()
      If BaboChangeLocationEvent08.getstage() == 5
        BaboChangeLocationEvent08.setstage(6)
      ElseIf BaboChangeLocationEvent08.getstage() == 25
        BaboChangeLocationEvent08.setstage(27)
      EndIf
    EndIf
    Self.GotoState("")
  EndFunction

  Function StruggleBarDisplay(Bool Display = True)
    If Display
      (BaboWidgetController as baboqtewidgetex).Alpha = 100.0
      If Game.UsingGamepad()
        If BDMCM.BaboResistType == "$Attack"
          StrafeL = input.GetMappedKey("Right Attack/Block", 2)
          StrafeR = input.GetMappedKey("Right Attack/Block", 2)
        Else
          StrafeL = input.GetMappedKey("Strafe Left", 2)
          StrafeR = input.GetMappedKey("Strafe Right", 2)
        EndIf
      ElseIf BDMCM.BaboResistType == "$Attack"
        StrafeL = input.GetMappedKey("Left Attack/Block", 255)
        StrafeR = input.GetMappedKey("Right Attack/Block", 255)
      Else
        StrafeL = input.GetMappedKey("Strafe Left", 255)
        StrafeR = input.GetMappedKey("Strafe Right", 255)
      EndIf
      Self.RegisterForKey(StrafeL)
      Self.RegisterForKey(StrafeR)
    Else
      (BaboWidgetController as baboqtewidgetex).Alpha = 0.0
      (BaboWidgetController as baboqtewidgetex).Percent = 0.0
      FillDifficulty = 0.0
      Self.UnregisterForKey(StrafeL)
      Self.UnregisterForKey(StrafeR)
    EndIf
  EndFunction

  Event onBeginState()
    Self.UnregisterForUpdate() ; #DEBUG_LINE_NO:4792
    Game.EnablePlayerControls(1 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0) ; #DEBUG_LINE_NO:4793
    actorutil.AddPackageOverride(StruggleActor, BaboDoNothing, 100, 1) ; #DEBUG_LINE_NO:4794
    StruggleActor.EvaluatePackage() ; #DEBUG_LINE_NO:4795
    Self.EventPairMotion(StruggleActor, 0, 0, 0, 7, False) ; #DEBUG_LINE_NO:4796
    Utility.Wait(1.5) ; #DEBUG_LINE_NO:4797
    DownedTime = 20.0 ; #DEBUG_LINE_NO:4798
    FillThreshold = PresetFillThreshold ; #DEBUG_LINE_NO:4799
    Self.StruggleBarDisplay(True) ; #DEBUG_LINE_NO:4800
    Self.RegisterForSingleUpdate(1.0) ; #DEBUG_LINE_NO:4801
    Self.ShowHelpMessage() ; #DEBUG_LINE_NO:4802
    StruggleActor.addtofaction(BaboDialogueHuggedFaction) ; #DEBUG_LINE_NO:4803
  EndEvent
EndState

;-- State -------------------------------------------
State babokidnapqtetextstate

  Function QTETextStart()
    bQTETextAbort = False
    Bool IsSuccess = Self.StartQTEText(BDMCM.BaboQTELimitTime, BDMCM.BaboQTEDifficulty)
    If bQTETextAbort
      Return 
    EndIf
    If IsSuccess
      BaboWidgetTextController.stop()
      (BaboWidgetTextController as baboqtetextwidgetex).turnoff()
      (BaboKidnapEvent as babokidnapevenscript).QTESnareTrapSuccess()
      Self.GotoState("")
    Else
      BaboWidgetTextController.stop()
      (BaboWidgetTextController as baboqtetextwidgetex).turnoff()
      (BaboKidnapEvent as babokidnapevenscript).QTESnareTrapFail()
      Self.GotoState("")
    EndIf
  EndFunction

  Event onBeginState()
    Self.QTETextStart() ; #DEBUG_LINE_NO:4765
  EndEvent
EndState

;-- State -------------------------------------------
State babokidnapstate

  Function OnKeyDown(Int KeyCode)
    SoundTime += 1
    If KeyCode == StrafeL && LeftRight && PlayerRef.GetActorValue(DamagevalueString) >= 1.0
      LeftRight = False
      FillDifficulty += FillThreshold
      PlayerRef.DamageActorValue(DamagevalueString, 1.0)
      (BaboWidgetController as baboqtewidgetex).Percent = FillDifficulty
    ElseIf KeyCode == StrafeR && !LeftRight && PlayerRef.GetActorValue(DamagevalueString) >= 1.0
      LeftRight = True
      FillDifficulty += FillThreshold
      PlayerRef.DamageActorValue(DamagevalueString, 1.0)
      (BaboWidgetController as baboqtewidgetex).Percent = FillDifficulty
    EndIf
    If SoundTime == 3
      Self.MiscSound(PlayerRef as ObjectReference, 2)
    ElseIf SoundTime == 7
      Self.UseSexlabVoice(PlayerRef, True)
      SoundTime = 0
    EndIf
  EndFunction

  Event OnUpdate()
    Time += 1
    If (BaboWidgetController as baboqtewidgetex).Percent >= 1.0
      Self.ResistSuccess(None)
      Return 
    ElseIf Time as Float > DownedTime
      Self.ResistFailed(None)
      Return 
    EndIf
    (BaboWidgetController as baboqtewidgetex).Alpha = 100.0
    Self.RegisterForSingleUpdate(1.0)
  EndEvent

  Function ResistFailed(Actor akactor)
    Self.QTESoloAnimation(PlayerRef, True, "BaboRopeHit", False)
    (BaboKidnapEvent as babokidnapevenscript).TimeLapse(True, True)
    Self.KidnapEvent01Messagebox(8)
    Self.Restore()
  EndFunction

  Function ResistSuccess(Actor akactor)
    Self.QTESoloAnimation(PlayerRef, False, "BaboRopeFall", True)
    Self.KidnapEvent01Messagebox(9)
    (BaboKidnapEvent as babokidnapevenscript).CurrentlyCaptured(False)
    (BaboKidnapEvent as babokidnapevenscript).OnLOSRegister()
    If !Self.RecoverControl(False)
      (BaboKidnapEvent as babokidnapevenscript).YesCollision(None, "")
    EndIf
    Self.Restore()
  EndFunction

  Function Restore()
    Time = 0
    SoundTime = 0
    Self.StruggleBarDisplay(False)
    Self.GotoState("")
  EndFunction

  Function StruggleBarDisplay(Bool Display = True)
    If Display
      (BaboWidgetController as baboqtewidgetex).Alpha = 100.0
      If Game.UsingGamepad()
        If BDMCM.BaboResistType == "$Attack"
          StrafeL = input.GetMappedKey("Right Attack/Block", 2)
          StrafeR = input.GetMappedKey("Right Attack/Block", 2)
        Else
          StrafeL = input.GetMappedKey("Strafe Left", 2)
          StrafeR = input.GetMappedKey("Strafe Right", 2)
        EndIf
      ElseIf BDMCM.BaboResistType == "$Attack"
        StrafeL = input.GetMappedKey("Left Attack/Block", 255)
        StrafeR = input.GetMappedKey("Right Attack/Block", 255)
      Else
        StrafeL = input.GetMappedKey("Strafe Left", 255)
        StrafeR = input.GetMappedKey("Strafe Right", 255)
      EndIf
      Self.RegisterForKey(StrafeL)
      Self.RegisterForKey(StrafeR)
    Else
      (BaboWidgetController as baboqtewidgetex).Alpha = 0.0
      (BaboWidgetController as baboqtewidgetex).Percent = 0.0
      FillDifficulty = 0.0
      Self.UnregisterForKey(StrafeL)
      Self.UnregisterForKey(StrafeR)
    EndIf
  EndFunction

  Event onBeginState()
    Game.EnablePlayerControls(1 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0) ; #DEBUG_LINE_NO:4657
    Self.QTESoloAnimation(PlayerRef, True, "BaboRopeSquirm", False) ; #DEBUG_LINE_NO:4658
    Utility.Wait(1.5) ; #DEBUG_LINE_NO:4659
    DownedTime = 20.0 ; #DEBUG_LINE_NO:4660
    FillThreshold = PresetFillThreshold ; #DEBUG_LINE_NO:4661
    Self.StruggleBarDisplay(True) ; #DEBUG_LINE_NO:4662
    Self.RegisterForSingleUpdate(1.0) ; #DEBUG_LINE_NO:4663
    Self.ShowHelpMessage() ; #DEBUG_LINE_NO:4664
  EndEvent
EndState

;-- State -------------------------------------------
State babosimpleqtestate

  Function OnKeyDown(Int KeyCode)
    SoundTime += 1
    If KeyCode == StrafeL && LeftRight && PlayerRef.GetActorValue(DamagevalueString) >= 1.0
      LeftRight = False
      FillDifficulty += FillThreshold
      PlayerRef.DamageActorValue(DamagevalueString, 1.0)
      (BaboWidgetController as baboqtewidgetex).Percent = FillDifficulty
    ElseIf KeyCode == StrafeR && !LeftRight && PlayerRef.GetActorValue(DamagevalueString) >= 1.0
      LeftRight = True
      FillDifficulty += FillThreshold
      PlayerRef.DamageActorValue(DamagevalueString, 1.0)
      (BaboWidgetController as baboqtewidgetex).Percent = FillDifficulty
    EndIf
  EndFunction

  Event OnUpdate()
    Time += 1
    If (BaboWidgetController as baboqtewidgetex).Percent >= 1.0
      Self.ResistSuccess(None)
      Return 
    ElseIf Time as Float > DownedTime
      Self.ResistFailed(None)
      Return 
    EndIf
    (BaboWidgetController as baboqtewidgetex).Alpha = 100.0
    Self.RegisterForSingleUpdate(1.0)
  EndEvent

  Function ResistFailed(Actor akactor)
    Self.EventPairMotion(akactor, 0, 0, 0, 0, False)
    Debug.SendAnimationEvent(PlayerRef as ObjectReference, "IdleForceDefaultState")
    Self.Restore()
  EndFunction

  Function ResistSuccess(Actor akactor)
    Self.EventPairMotion(akactor, 0, 0, 0, 0, False)
    Debug.SendAnimationEvent(PlayerRef as ObjectReference, "IdleForceDefaultState")
    Self.Restore()
  EndFunction

  Function Restore()
    Time = 0
    SoundTime = 0
    Self.StruggleBarDisplay(False)
    Self.GotoState("")
  EndFunction

  Function StruggleBarDisplay(Bool Display = True)
    If Display
      (BaboWidgetController as baboqtewidgetex).Alpha = 100.0
      If Game.UsingGamepad()
        StrafeL = 268
        StrafeR = 269
      ElseIf BDMCM.BaboResistType == "$Attack"
        StrafeL = input.GetMappedKey("Left Attack/Block", 255)
        StrafeR = input.GetMappedKey("Right Attack/Block", 255)
      Else
        StrafeL = input.GetMappedKey("Strafe Left", 255)
        StrafeR = input.GetMappedKey("Strafe Right", 255)
      EndIf
      Self.RegisterForKey(StrafeL)
      Self.RegisterForKey(StrafeR)
    Else
      (BaboWidgetController as baboqtewidgetex).Alpha = 0.0
      (BaboWidgetController as baboqtewidgetex).Percent = 0.0
      FillDifficulty = 0.0
      Self.UnregisterForKey(StrafeL)
      Self.UnregisterForKey(StrafeR)
    EndIf
  EndFunction

  Event onBeginState()
    Game.EnablePlayerControls(1 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0 as Bool, 0) ; #DEBUG_LINE_NO:4904
    Utility.Wait(1.5) ; #DEBUG_LINE_NO:4906
    DownedTime = 20.0 ; #DEBUG_LINE_NO:4907
    FillThreshold = PresetFillThreshold ; #DEBUG_LINE_NO:4908
    Self.StruggleBarDisplay(True) ; #DEBUG_LINE_NO:4909
    Self.RegisterForSingleUpdate(1.0) ; #DEBUG_LINE_NO:4910
    Self.ShowHelpMessage() ; #DEBUG_LINE_NO:4911
  EndEvent
EndState

;-- State -------------------------------------------
State constantpainexpression

  Event OnUpdate()
    Self.CustomMFGPain(PlayerRef, Utility.randomint(1, 8), True, False)
    Self.RegisterForSingleUpdate(30.0)
  EndEvent

  Function Restore()
    Self.UnregisterForUpdate()
    Self.GotoState("")
  EndFunction

  Event onBeginState()
    Self.RegisterForSingleUpdate(30.0) ; #DEBUG_LINE_NO:4993
  EndEvent
EndState