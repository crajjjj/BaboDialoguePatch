Scriptname BaboStripArmor extends Quest  

ObjectReference Property EmptyContainer Auto
MiscObject Property Gold001 Auto
Referencealias Property PervertRef Auto

Armor CurrentPanty
Armor CurrentHead
Armor CurrentBody
Armor CurrentHand
Armor CurrentFeet
Armor CurrentShield

Weapon CurrentRWeapon

Actor Property PlayerRef Auto


Function StealingGold(ReferenceAlias StealerRef, int Number)

	if PlayerRef == None || Gold001 == None
		return
	endif
	if StealerRef == None
		return
	endif
	Actor Pervert = StealerRef.GetActorReference()

	PlayerRef.RemoveItem(Gold001, Number, false, Pervert)

EndFunction

Function ConfiscateMWeapon(ReferenceAlias StealerRef)

	if PlayerRef == None
		return
	endif
	if StealerRef == None
		return
	endif
	Actor Pervert = StealerRef.GetActorReference()

	CurrentRWeapon = PlayerRef.GetEquippedObject(1) as Weapon
	if CurrentRWeapon != None
		PlayerRef.RemoveItem(CurrentRWeapon, 1, false, Pervert)
	endif

EndFunction

Function ConfiscateShield(ReferenceAlias StealerRef)

	if PlayerRef == None
		return
	endif
	if StealerRef == None
		return
	endif
	Actor Pervert = StealerRef.GetActorReference()

	CurrentShield = PlayerRef.GetWornForm(0x00000200) as Armor
	if CurrentShield != None
		PlayerRef.RemoveItem(CurrentShield, 1, false, Pervert)
	endif

EndFunction

Function ConfiscateArmorBra(ReferenceAlias StealerRef)

	if PlayerRef == None
		return
	endif
	if StealerRef == None
		return
	endif
	Actor Pervert = StealerRef.GetActorReference()

	CurrentBody = PlayerRef.GetWornForm(0x00000004) as Armor
	if CurrentBody != None
		PlayerRef.RemoveItem(CurrentBody, 1, false, Pervert)
	endif

EndFunction

Function ConfiscateArmorPanty(ReferenceAlias StealerRef)

	if PlayerRef == None
		return
	endif
	if StealerRef == None
		return
	endif
	Actor Pervert = StealerRef.GetActorReference()

	CurrentPanty = PlayerRef.GetWornForm(0x00400000) as Armor
	if CurrentPanty != None
		PlayerRef.RemoveItem(CurrentPanty, 1, false, Pervert)
	endif

EndFunction
