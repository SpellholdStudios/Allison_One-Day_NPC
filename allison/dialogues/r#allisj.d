BEGIN ~R#ALLISJ~

IF ~~ THEN BEGIN FaldornChallenge 
 SAY @0
 IF ~~ THEN EXTERN CEFALDOR AcceptChallenge
END

IF ~~ THEN BEGIN Player1Fine
 SAY @1
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Player1Help
 SAY @2 = @3
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SharedFight
 SAY @4
 ++@5+SharedFight2
END

IF ~~ THEN BEGIN SharedFight2
 SAY @6
 IF ~~ THEN EXTERN Player1 PlayerReturnTree
END

IF ~~ THEN BEGIN WithPlayer
 SAY @39
 COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN JonTree
 SAY @7
 COPY_TRANS SUJON 14
END

EXTEND_TOP CEFALDOR 2
 IF ~InParty("r#allis")
     !Dead("r#allis")
     !StateCheck("r#allis",STATE_SLEEPING)~ THEN REPLY @8 EXTERN R#ALLISJ FaldornChallenge
END

APPEND ~CEFALDOR~
 IF ~~ THEN BEGIN AcceptChallenge
  SAY @9 = @10
  IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("r#alcut")~ UNSOLVED_JOURNAL @11 EXIT
END

END // APPEND

INTERJECT_COPY_TRANS HELLJON 7 AllisonInHell
 == R#ALLISJ IF ~IsValidForPartyDialogue("r#allison")~ THEN @12
END

INTERJECT_COPY_TRANS SUAVATAR 7 AllisonTreeLife
 == R#ALLISJ IF ~IsValidForPartyDialogue("r#allison")~ THEN @13
END

INTERJECT PLAYER1 3 AllisonSelfTalk
 == R#ALLISJ IF ~IsValidForPartyDialogue("r#allison")~ THEN @14
END
++@15 EXTERN R#ALLISJ Player1Fine
++@16 EXTERN R#ALLISJ Player1Help

INTERJECT_COPY_TRANS PLAYER1 25 AllisonInHell2
 == R#ALLISJ IF ~IsValidForPartyDialogue("r#allison")~ THEN @17
END

EXTEND_BOTTOM PLAYER1 33
 IF ~IsValidForPartyDialogue("r#allison") Global("r#AllisonTree","GLOBAL",0)~ THEN GOTO AllisonAtTree
END

APPEND ~PLAYER1~

IF ~~ THEN BEGIN AllisonAtTree
 SAY @18 = @19
 + ~Gender(Player1,MALE)~ + @20 DO ~SetGlobal("r#AllisonAtTree","GLOBAL",1)~ EXTERN R#ALLISJ SharedFight
 + ~Gender(Player1,MALE)~ + @21 DO ~SetGlobal("r#AllisonAtTree","GLOBAL",1)~ EXTERN R#ALLISJ SharedFight
 ++ @22 DO ~SetGlobal("r#AllisonAtTree","GLOBAL",1)~ EXTERN R#ALLISJ WithPlayer
END

IF ~Global("r#AllisonAtTree","GLOBAL",1)~ THEN BEGIN PlayerReturnTree
 SAY @40
 COPY_TRANS PLAYER1 33
END
 

END // APPEND

INTERJECT SARKIS01 11 WhyBetray
 == R#ALLISJ IF ~IsValidForPartyDialogue("r#Allison")~ THEN @23
 == SARKIS01 @24
END SARKIS 17

INTERJECT_COPY_TRANS SUELLE 1 Queen
 == R#ALLISJ IF ~IsValidForPartyDialogue("r#allison")~ THEN @25
END

EXTEND_BOTTOM SUJON 14
 IF ~IsValidForPartyDialogue("r#allison")~ THEN DO ~Enemy()~ EXTERN R#ALLISJ JonTree
END

ADD_STATE_TRIGGER GROMNIR 7 ~!IsValidForPartyDialogue("r#allison")~

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)
                     IsValidForPartyDialogue("r#allison")~ THEN GROMNIR MeetPlayer @26 
 == R#ALLISJ @27
 DO ~ClearAllActions()
StartCutSceneMode()
EraseJournalEntry(64995)
EraseJournalEntry(65001)
EraseJournalEntry(65003)
ActionOverride("Gromnir",Enemy())
CreateCreature("GROMG03",[781.596],4)
CreateCreature("GROMG09",[832.609],4)
CreateCreature("GROMG10",[778.636],4)
EndCutSceneMode()
ActionOverride("gromg03",Shout(151))
ActionOverride("gromg03",Enemy())
Shout(151)
AddJournalEntry(65062,QUEST)~ EXIT

INTERJECT FINMEL01 2 Traitor
 == R#ALLISJ IF ~IsValidForPartyDialogue("r#allison")~ THEN @28
 DO ~ActionOverride("Finmel01",Enemy())~ EXIT

INTERJECT_COPY_TRANS PPIRENI2 35 AllisonAsylum
 == R#ALLISJ IF ~IsValidForPartyDialogue("r#allison")~ THEN @29
END

CHAIN IF ~IsGabber("r#allison")~ THEN SALVANAS AllisonChain @30
 == R#ALLISJ @31
 == SALVANAS @32
 == R#ALLISJ @33
 == SALVANAS @34
 == R#ALLISJ @35
 == SALVANAS @36
 == R#ALLISJ @37 = @38
EXIT
