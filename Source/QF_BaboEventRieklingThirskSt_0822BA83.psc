;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 8
Scriptname QF_BaboEventRieklingThirskSt_0822BA83 Extends Quest Hidden

;BEGIN ALIAS PROPERTY ThirskRieklingMinionD
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ThirskRieklingMinionD Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PlayerAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PlayerAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RieklingSpawnMarkerC
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RieklingSpawnMarkerC Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RieklingSpawnMarkerBoss
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RieklingSpawnMarkerBoss Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ThirskRieklingMinionA
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ThirskRieklingMinionA Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RieklingChallengerChief
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RieklingChallengerChief Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY OldLocation
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_OldLocation Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RieklingSpawnMarkerA
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RieklingSpawnMarkerA Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ThirskRieklingMinionC
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ThirskRieklingMinionC Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NewLocation
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_NewLocation Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RieklingSpawnMarkerB
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RieklingSpawnMarkerB Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RieklingChallengerMinionB
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RieklingChallengerMinionB Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RieklingChallengerMinionA
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RieklingChallengerMinionA Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ThirskRieklingMinionB
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ThirskRieklingMinionB Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RieklingChallengerMinionC
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RieklingChallengerMinionC Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
Actor[] RieklingArray = New Actor[4]
RieklingArray[0] = Alias_RieklingChallengerChief.getreference() as actor
RieklingArray[1] = Alias_RieklingChallengerMinionA.getreference() as actor
RieklingArray[2] = Alias_RieklingChallengerMinionB.getreference() as actor
RieklingArray[3] = Alias_RieklingChallengerMinionC.getreference() as actor

(BaboSexController as BaboSexControllerManager).DeleteWhenAbleWithTimeout(RieklingArray, 30.0)

setstage(255)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN AUTOCAST TYPE BaboEventRieklingDuelScript
Quest __temp = self as Quest
BaboEventRieklingDuelScript kmyQuest = __temp as BaboEventRieklingDuelScript
;END AUTOCAST
;BEGIN CODE
int choice = BaboEventRieklingThirskStartQuestMsg.show()

if choice == 0
setstage(150);skip the fight
elseif choice == 1
setstage(160);Duel
elseif choice == 2
setstage(140);Fight Together
elseif choice == 3
setstage(200);Submit
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN AUTOCAST TYPE BaboEventRieklingDuelScript
Quest __temp = self as Quest
BaboEventRieklingDuelScript kmyQuest = __temp as BaboEventRieklingDuelScript
;END AUTOCAST
;BEGIN CODE
kmyQuest.Defeated()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN AUTOCAST TYPE BaboEventRieklingDuelScript
Quest __temp = self as Quest
BaboEventRieklingDuelScript kmyQuest = __temp as BaboEventRieklingDuelScript
;END AUTOCAST
;BEGIN CODE
Utility.wait(5.0)
(Alias_RieklingChallengerMinionA.getreference() as actor).kill()
(Alias_RieklingChallengerMinionB.getreference() as actor).kill()
(Alias_RieklingChallengerMinionC.getreference() as actor).kill()
int choice = BaboEventRieklingThirskStartWinMsg.show()

if choice == 0
PlayerRef.moveto(Alias_RieklingSpawnMarkerBoss.getreference())
else
PlayerRef.moveto(Alias_RieklingSpawnMarkerBoss.getreference())
endif

setstage(250)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN AUTOCAST TYPE BaboEventRieklingDuelScript
Quest __temp = self as Quest
BaboEventRieklingDuelScript kmyQuest = __temp as BaboEventRieklingDuelScript
;END AUTOCAST
;BEGIN CODE
(Alias_RieklingChallengerChief.getreference() as actor).moveto(BaboEventRieklingEntranceMarker)
PlayerRef.moveto(BaboEventRieklingDuelPlayer)
kmyQuest.RegisterEvents()
(BaboSexController as BaboSexControllerManager).BadRieklingDuelMessagebox(20)
(BaboSexController as BaboSexControllerManager).ActorChallengeStart((Alias_RieklingChallengerChief.getreference() as actor))
;(Alias_RieklingChallengerChief.getreference() as actor).addtofaction(BaboEnemyRieklingFaction)
;(Alias_RieklingChallengerChief.getreference() as actor).startCombat(PlayerRef)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN AUTOCAST TYPE BaboEventRieklingDuelScript
Quest __temp = self as Quest
BaboEventRieklingDuelScript kmyQuest = __temp as BaboEventRieklingDuelScript
;END AUTOCAST
;BEGIN CODE
(Alias_RieklingChallengerChief.getreference() as actor).addtofaction(BaboEnemyRieklingFaction)
(Alias_RieklingChallengerMinionA.getreference() as actor).addtofaction(BaboEnemyRieklingFaction)
(Alias_RieklingChallengerMinionB.getreference() as actor).addtofaction(BaboEnemyRieklingFaction)
(Alias_RieklingChallengerMinionC.getreference() as actor).addtofaction(BaboEnemyRieklingFaction)
(Alias_RieklingChallengerChief.getreference() as actor).startCombat(PlayerRef)
(Alias_RieklingChallengerMinionA.getreference() as actor).startCombat(Alias_ThirskRieklingMinionA.getreference() as actor)
(Alias_RieklingChallengerMinionB.getreference() as actor).startCombat(Alias_ThirskRieklingMinionA.getreference() as actor)
(Alias_RieklingChallengerMinionC.getreference() as actor).startCombat(Alias_ThirskRieklingMinionA.getreference() as actor)

kmyQuest.RegisterForSingleUpdateGameTime(24.0)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE BaboEventRieklingDuelScript
Quest __temp = self as Quest
BaboEventRieklingDuelScript kmyQuest = __temp as BaboEventRieklingDuelScript
;END AUTOCAST
;BEGIN CODE
(Alias_RieklingChallengerChief.getreference() as actor).addtofaction(BaboEnemyRieklingFaction)
(Alias_RieklingChallengerMinionA.getreference() as actor).addtofaction(BaboEnemyRieklingFaction)
(Alias_RieklingChallengerMinionB.getreference() as actor).addtofaction(BaboEnemyRieklingFaction)
(Alias_RieklingChallengerMinionC.getreference() as actor).addtofaction(BaboEnemyRieklingFaction)
(Alias_RieklingChallengerChief.getreference() as actor).startCombat(Alias_ThirskRieklingMinionA.getreference() as actor)
(Alias_RieklingChallengerMinionA.getreference() as actor).startCombat(Alias_ThirskRieklingMinionA.getreference() as actor)
(Alias_RieklingChallengerMinionB.getreference() as actor).startCombat(Alias_ThirskRieklingMinionA.getreference() as actor)
(Alias_RieklingChallengerMinionC.getreference() as actor).startCombat(Alias_ThirskRieklingMinionA.getreference() as actor)

kmyQuest.RegisterForSingleUpdateGameTime(24.0)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Message Property BaboEventRieklingThirskStartQuestMsg  Auto  

Faction Property BaboEnemyRieklingFaction  Auto  

ObjectReference Property BaboEventRieklingEntranceMarker  Auto  

Actor Property PlayerRef  Auto  

ObjectReference Property BaboEventRieklingDuelPlayer  Auto  

Quest Property BaboSexController  Auto  

Message Property BaboEventRieklingThirskStartWinMsg  Auto  
