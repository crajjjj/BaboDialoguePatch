Scriptname BakaDoortoGuardHouseScript extends ObjectReference  

Event Onactivate(ObjectReference akActionRef)
	if PlayerRef == None
		return
	endif
	if akActionRef == PlayerRef
		if BaboDoortoRandomGuardHouse == None
			return
		endif
		int choice = BaboDoortoRandomGuardHouse.Show()
		if (choice == 0)
			if BaboRescuePointKeyword != None
				BaboRescuePointKeyword.SendStoryEvent()
			endif
		endif
	endif
EndEvent

actor property PlayerRef auto
Message Property BaboDoortoRandomGuardHouse  Auto
Keyword Property BaboRescuePointKeyword Auto
