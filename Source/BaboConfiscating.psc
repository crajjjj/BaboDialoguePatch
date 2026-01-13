Scriptname BaboConfiscating extends Quest  

ObjectReference Property OrcContainer Auto

Armor CurrentPanty
Armor CurrentHead
Armor CurrentBody
Armor CurrentHand
Armor CurrentFeet
Armor CurrentShield

Weapon CurrentRWeapon

Actor Property PlayerRef Auto
Actor targ

Function ConfiscateMWeapon()

if PlayerRef == None || OrcContainer == None
	return
endif
CurrentRWeapon = PlayerRef.GetEquippedObject(1) as Weapon
if CurrentRWeapon != None
	PlayerRef.RemoveItem(CurrentRWeapon, 1, false, OrcContainer)
endif

EndFunction

Function ConfiscateMEquipment()

	if PlayerRef == None || OrcContainer == None
		return
	endif

	CurrentBody = PlayerRef.GetWornForm(0x00000004) as Armor
	CurrentPanty = PlayerRef.GetWornForm(0x00400000) as Armor
	CurrentHand = PlayerRef.GetWornForm(0x00000008) as Armor
	CurrentFeet = PlayerRef.GetWornForm(0x00000080) as Armor
	CurrentShield = PlayerRef.GetWornForm(0x00000200) as Armor

	if CurrentPanty != None && !CurrentPanty.HasKeyWordString("Hentaipanty")
		CurrentPanty = None
	endif

	if CurrentBody != None
		PlayerRef.RemoveItem(CurrentBody, 1, false, OrcContainer)
	endif
	if CurrentPanty != None
		PlayerRef.RemoveItem(CurrentPanty, 1, false, OrcContainer)
	endif
	if CurrentHand != None
		PlayerRef.RemoveItem(CurrentHand, 1, false, OrcContainer)
	endif
	if CurrentFeet != None
		PlayerRef.RemoveItem(CurrentFeet, 1, false, OrcContainer)
	endif
	if CurrentShield != None
		PlayerRef.RemoveItem(CurrentShield, 1, false, OrcContainer)
	endif

EndFunction
