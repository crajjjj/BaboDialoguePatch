;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 20
Scriptname QF_BaboEventRieklingThirsk_0807AD9B Extends Quest Hidden

;BEGIN ALIAS PROPERTY RieklingWarrior04
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RieklingWarrior04 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CurrentLocation
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_CurrentLocation Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PlayerAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PlayerAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SpouseAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SpouseAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RieklingMinion03
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RieklingMinion03 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RieklingWarrior02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RieklingWarrior02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RieklingMinion02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RieklingMinion02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RieklingWarrior03
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RieklingWarrior03 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DoorAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DoorAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RieklingWarrior01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RieklingWarrior01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RieklingChallenger
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RieklingChallenger Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RieklingMinion01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RieklingMinion01 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(6)
Setstage(170)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN AUTOCAST TYPE BaboEventRiekling
Quest __temp = self as Quest
BaboEventRiekling kmyQuest = __temp as BaboEventRiekling
;END AUTOCAST
;BEGIN CODE
kmyQuest.Fadeout(Alias_RieklingChallenger.getreference() as actor)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN AUTOCAST TYPE BaboEventRiekling
Quest __temp = self as Quest
BaboEventRiekling kmyQuest = __temp as BaboEventRiekling
;END AUTOCAST
;BEGIN CODE
BRMQuest.DecreaseReputation(20, 5)
BRMQuest.AddingTitletoPlayerRef(BaboFactionRieklingThirskFuckToyTitle)
BRMQuest.SetTitleGlobal(BaboGlobalRieklingThirskFuckToyTitle, 1)
kmyQuest.UnEquipRestraints()
(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(4)
Setstage(130)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE BaboEventRiekling
Quest __temp = self as Quest
BaboEventRiekling kmyQuest = __temp as BaboEventRiekling
;END AUTOCAST
;BEGIN CODE
kmyQuest.ActorMovetoPoint(Alias_PlayerAlias.getreference() as actor, none)
kmyQuest.ActorMovetoPoint(Alias_RieklingChallenger.getreference() as actor, none)
;kmyQuest.SpawnNewRiekling()
kmyQuest.RieklingThreesome(Alias_PlayerAlias, Alias_RieklingChallenger)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
(BaboSexController as BaboSexControllerManager).ChallengeStart(Alias_RieklingChallenger)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(3)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE BaboEventRiekling
Quest __temp = self as Quest
BaboEventRiekling kmyQuest = __temp as BaboEventRiekling
;END AUTOCAST
;BEGIN CODE
kmyQuest.Setthestage()
(Alias_RieklingChallenger.getRef() as Actor).EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
(Alias_RieklingChallenger.getRef() as Actor).EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
BaboEventRieklingThirskScene01.forcestart()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
(Alias_RieklingChallenger.getRef() as Actor).EvaluatePackage()
(Alias_RieklingWarrior01.getRef() as Actor).EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(5)
BRMQuest.IncreaseReputation(15, 5)
Setstage(170)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(17)
Setstage(170)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN AUTOCAST TYPE BaboEventRiekling
Quest __temp = self as Quest
BaboEventRiekling kmyQuest = __temp as BaboEventRiekling
;END AUTOCAST
;BEGIN CODE
kmyQuest.UnRegisterEvents()
(BaboSexController as BaboSexControllerManager).pacifyAlias(Alias_RieklingChallenger)
(Alias_PlayerAlias as BaboRieklingThirskDuelRefScript).ClearEssential()
BaboEventRieklingThirskScene01.forceStart()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN AUTOCAST TYPE BaboEventRiekling
Quest __temp = self as Quest
BaboEventRiekling kmyQuest = __temp as BaboEventRiekling
;END AUTOCAST
;BEGIN CODE
;kmyQuest.SpawnNewRiekling()
Utility.wait(2.0)
kmyQuest.EquipRestraints()
Setstage(90)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
(Alias_RieklingChallenger.getRef() as Actor).EvaluatePackage()
(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(2)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN AUTOCAST TYPE BaboEventRiekling
Quest __temp = self as Quest
BaboEventRiekling kmyQuest = __temp as BaboEventRiekling
;END AUTOCAST
;BEGIN CODE
kmyQuest.RegisterUpdate()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
(Alias_RieklingChallenger.getRef() as Actor).EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN AUTOCAST TYPE BaboEventRiekling
Quest __temp = self as Quest
BaboEventRiekling kmyQuest = __temp as BaboEventRiekling
;END AUTOCAST
;BEGIN CODE
(Alias_PlayerAlias as BaboRieklingThirskDuelRefScript).CheckEssential()
kmyQuest.RegisterEvents()
(BaboSexController as BaboSexControllerManager).ChallengeStart(Alias_RieklingChallenger)
(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
(Alias_RieklingChallenger.getRef() as Actor).EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Faction Property BaboFactionRieklingThirskFuckToyTitle  Auto  

GlobalVariable Property BaboGlobalRieklingThirskFuckToyTitle  Auto  

BaboReputationMasterScript Property BRMQuest Auto

Scene Property BaboEventRieklingThirskScene01  Auto  

Quest Property BaboSexController  Auto  

GlobalVariable Property BaboKillCountRieklingChallenger  Auto  
