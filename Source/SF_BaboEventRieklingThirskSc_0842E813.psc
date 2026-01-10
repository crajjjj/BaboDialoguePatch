;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname SF_BaboEventRieklingThirskSc_0842E813 Extends Scene Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;(Getowningquest() as BaboEventRiekling).RieklingMinionsGettoPlayer()
(GetOwningQuest() as BaboEventRiekling).RieklingSexActor(PlayerRef, RieklingChallenger.getreference() as actor,"BABO_TRIInitialSex", "TRIInitialSex", true, true)
stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias Property RieklingChallenger  Auto  

Actor Property PlayerRef  Auto  

Quest Property BaboSexController  Auto  
