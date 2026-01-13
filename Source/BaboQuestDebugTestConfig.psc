Scriptname BaboQuestDebugTestConfig extends Quest  

Formlist Property BaboFavorCharmPotions Auto

Function GiveCharmPotion(actor akactor)
	If akactor && akactor.ShowGiftMenu(True, BaboFavorCharmPotions) > 0
		Debug.messagebox("You gave him a potion")
	else
		Debug.messagebox("You didn't give him a potion")
	endif
EndFunction