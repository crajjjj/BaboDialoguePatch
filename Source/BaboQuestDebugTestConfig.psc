ScriptName BaboQuestDebugTestConfig Extends Quest

;-- Variables ---------------------------------------

;-- Properties --------------------------------------
ObjectReference Property BaboArenaPlayerXmarker Auto
FormList Property BaboFavorCharmPotions Auto
Quest Property BaboSexController Auto
Actor Property PlayerRef Auto

;-- Functions ---------------------------------------

; Skipped compiler generated GetState

; Skipped compiler generated GotoState

Function FadeinTest()
  (BaboSexController as babosexcontrollermanager).FadeinScene(False) ; #DEBUG_LINE_NO:9
  PlayerRef.moveto(BaboArenaPlayerXmarker, 0.0, 0.0, 0.0, True) ; #DEBUG_LINE_NO:10
  (BaboSexController as babosexcontrollermanager).FadeoutScene(False) ; #DEBUG_LINE_NO:11
EndFunction

Function GiveCharmPotion(Actor akactor)
  If akactor && akactor.ShowGiftMenu(True, BaboFavorCharmPotions, False, True) > 0 ; #DEBUG_LINE_NO:15
    Debug.messagebox("You gave him a potion") ; #DEBUG_LINE_NO:16
  Else
    Debug.messagebox("You didn't give him a potion") ; #DEBUG_LINE_NO:18
  EndIf
EndFunction