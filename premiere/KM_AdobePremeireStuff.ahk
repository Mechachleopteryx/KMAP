; Adobe Premiere Stuff
; written by Kristen Maxwell, who's livin' on shortwave streams tonight
; ================================= START AUTOEXEC =================================
SetTitleMatchMode, 2
#Persistent
#NoEnv
#SingleInstance Force
#InstallKeybdHook 
#Include %A_ScriptDir% 
setworkingdir % a_scriptdir

#include inc_premiere_autoexec.ahk ; grab all the Premiere stuff that needs to be autoexecuted

;================================== END AUTOEXEC ===================================


; ======================FUNCTION DEFINITIONS===============================
; nothing here right now. All relevant functions are in the \lib folder in 
; km_.ahk and kmap_.ahk


;=======================END FUNCTION DEFINITIONS===========================



; -----------------------------BEGIN----------------------------------------
; ---------------------Program / Window Specific Commands ------------------
; --------------------------------------------------------------------------

setworkingdir % a_scriptdir
#include inc_premiere.ahk 	; grab all the stuff that needs to be defined as hotkeys only available in
							; the Premiere window. If you want to add your own Premiere-specific
							; hotkeys, put them in that file (inc_premiere.ahk)


; -----------------------------END----------------------------------------
; ---------------------Program / Window Specific Commands ----------------
; ------------------------------------------------------------------------




; :::::::::::::::::::::::::::::BEGIN::::::::::::::::::::::::::::::::::::::::
; ::::::::::::::::::::: System-Wide Commands :::::::::::::::::::::::::::::::
; ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#IfWinActive    ; system-wide keys 
{
;~ uncomment (remove ;~) the following lines to enable a shortcut key to reload this script
	;~ #!Backspace::  ; Reload this AHK Script
		;~ TrayTip,, restarting %A_ScriptName%... ,,16
		;~ sleep 1000		
		;~ Reload ; reload this script
		
	;~ return ; end reload AHK script


}  ; end general #IfWinActive

; ::::::::::::::::::::::::::::::END:::::::::::::::::::::::::::::::::::::::::
; ::::::::::::::::::::: System:Wide Commands :::::::::::::::::::::::::::::::
; ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

;==================================[ labels n subroutines n end-matter stuff ]============================

setworkingdir % a_scriptdir
#include inc_premiere_subroutines.ahk ; grab all the subroutines for Adobe Premiere features
