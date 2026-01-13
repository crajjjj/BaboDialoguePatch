Scriptname BaboCheckIfPlayerDetected extends Quest  

ReferenceAlias Property NPCRA Auto

Event OnInit()
	if NPCRA == None
		Stop()
		return
	endif
	Actor npc = NPCRA.GetReference() as Actor
	int handle = ModEvent.Create("Babo_CheckIfPlayerDetected")
	if handle
		ModEvent.PushBool(handle, npc != none)
		ModEvent.Send(handle)
	endif
	Stop()
EndEvent
