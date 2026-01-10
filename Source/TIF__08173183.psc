;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname TIF__08173183 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
SexLabFramework sexLab = Game.GetFormFromFile(0x000D62, "SexLab.esm") as SexLabFramework
if sexLab != None
	actor[] sexActors = new actor[2]
    sexActors[0] = Game.GetPlayer()
    sexActors[1] = akspeaker as Actor
    sslBaseAnimation[] anims
    anims = sexLab.GetAnimationsByTag(2, "Dragon", "Vaginal")
    sexLab.StartSex(sexActors, anims, victim=sexActors[0])
endIf

;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
