Scriptname BakaDoorActivateScript extends ObjectReference  

Event Onactivate(ObjectReference akActionRef)
	if PlayerRef == None
		return
	endif
	if akActionRef == PlayerRef
	int choice
		if BaboEventQuest == None
			return
		endif
		if BaboEventQuest.getstage() >= ConditionalStage
			if BaboDoorEscapeMessage == None
				return
			endif
			choice = BaboDoorEscapeMessage.Show()
	if (choice == 0)
		if NextStageSwitch
			BaboEventQuest.setstage(NextStage)
		endif
				if RecoverMarker != None
					PlayerRef.moveto(RecoverMarker)
				endif
	endif
		else
			if BaboDoorNotYetMessage != None
				choice = BaboDoorNotYetMessage.Show()
			endif
		endif
	endif
EndEvent

actor property PlayerRef auto
Quest property BaboEventQuest auto
ObjectReference property RecoverMarker auto
Message Property BaboDoorEscapeMessage  Auto  
Message Property BaboDoorNotYetMessage Auto  

Bool Property NextStageSwitch = false Auto
Int Property NextStage Auto

Int Property ConditionalStage Auto
