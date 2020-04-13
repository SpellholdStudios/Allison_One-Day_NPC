APPEND ~JAHEIRAJ~

IF ~~ THEN BEGIN PlayerCruel
 SAY @144 = @145
 IF ~~ THEN EXTERN R#ALLIS NLHelp2
END

END // APPEND

BEGIN ~R#ALLIS~

IF ~NumTimesTalkedTo(0)
    OR(2)
     Class(Player1,DRUID_ALL)
     Class(Player1,RANGER_ALL)
    !Dead("Cefaldor")~ THEN BEGIN GreetNatureLover
 SAY @0
 ++@1+NLTalking
 ++@2+NLCrying
 ++@3+NLLeader
 ++@4+NLSnap
 ++@5+NLOkay
END

IF ~~ THEN BEGIN NLTalking
 SAY @6 = @7
 ++@8+NLName
 ++@2+NLCrying
 ++@3+NLLeader
 ++@4+NLSnap
 ++@9+NLOkay
END

IF ~~ THEN BEGIN NLCrying
 SAY @10 = @11
 ++@12+NLChange
 ++@13+NLFight
 ++@14 DO ~ReputationInc(-3)~ GOTO NLJerk
END

IF ~~ THEN BEGIN NLLeader
 SAY @15 = @16
 +~!Class(Player1,DRUID_ALL)~+@17+NLHelp
 +~Class(Player1,DRUID_ALL)~+@17+NLHelp2
 ++@18+NLRelated
 ++@19+NLChange
END

IF ~~ THEN BEGIN NLSnap
 SAY @20
 IF ~InParty("Aerie")~ THEN EXTERN AERIEJ HelpHer
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ PlayerCruel
 IF ~InParty("Anomen")~ THEN EXTERN ANOMENJ PlayerIsCruel
 IF ~!InParty("Aerie")
     !InParty("Jaheira")
     !InParty("Anomen")~ THEN REPLY @21 GOTO NLChange
 IF ~!InParty("Aerie")
     !InParty("Jaheira")
     !InParty("Anomen")
     Gender(Player1,MALE)~ THEN REPLY @22 GOTO NLSuffering
 IF ~!InParty("Aerie")
     !InParty("Jaheira")
     !InParty("Anomen")
     Gender(Player1,FEMALE)~ THEN REPLY @23 GOTO NLFSuffering
END

IF ~~ THEN BEGIN NLOkay
 SAY @24
 ++@25+NLTalking
 ++@26+NLCrying
 ++@27+NLLeader
 ++@17+NLHelp
END

IF ~~ THEN BEGIN NLName
 SAY @28
 ++@29+NLCrying
 ++@30+NLTalking
 ++@31+NLLeader
END

IF ~~ THEN BEGIN NLChange
 SAY @32
 ++@33+NLJoin
 ++@34 EXIT
 ++@35+NLJoinIf
END

IF ~~ THEN BEGIN NLFight
 SAY @36
 ++@37+NLJoin
 ++@38+NLJoinIf
 ++@34 EXIT
END


IF ~~ THEN BEGIN NLJerk
 SAY @39 = @40
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NLHelp
 SAY @41
 ++@42+NLDruid
 ++@43+NLAnother
 ++@44 EXIT
END

IF ~~ THEN BEGIN NLHelp2
 SAY @45 = @46
 ++@47+NLShadow
 ++@48+NLJoin
 ++@49 EXIT
END

IF ~~ THEN BEGIN NLRelated
 SAY @50
 +~!Class(Player1,DRUID_ALL)~+@51+NLHelp
 +~Class(Player1,DRUID_ALL)~+@51+NLHelp2
 ++@52 EXIT
END

IF ~~ THEN BEGIN NLSuffering
 SAY @53
 IF ~~ THEN DO ~ReputationInc(-6)~ EXIT
END

IF ~~ THEN BEGIN NLFSuffering
 SAY @54
 IF ~~ THEN DO ~ReputationInc(-3)~ EXIT
END

IF ~~ THEN BEGIN NLJoin
 SAY @55
 IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN NLJoinIf
 SAY @56 = @57
 ++@58+NLJoin
 ++@59 EXIT
END

IF ~~ THEN BEGIN NLDruid
 SAY @60
 ++@61+NLJoin
 ++@62+NLWish
END

IF ~~ THEN BEGIN NLAnother
 SAY @63
 ++@64+NLDruid
 ++@65 EXIT
END

IF ~~ THEN BEGIN NLShadow
 SAY @66
 IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)
    !Class(Player1,DRUID_ALL)
    !Class(Player1,RANGER_ALL)
    !Dead("Cefaldor")~ THEN BEGIN GreetRegular
 SAY @67
 ++@68+RegForest
 ++@69+RegGoingOn
 +~CheckStatLT(Player1,4,INT)~+@70+RegJoke
END

IF ~~ THEN BEGIN RegForest
 SAY @71
 ++@72+RegRevenge
 ++@73+RegHelp
 ++@74+RegMetaphor
END

IF ~~ THEN BEGIN RegGoingOn
 SAY @75
 ++@76+RegShadow
 ++@77+RegHelp
 ++@78+RegMetaphor
END

IF ~~ THEN BEGIN RegJoke
 SAY @79
 ++@80+RegGoingOn
END

IF ~~ THEN BEGIN RegRevenge
 SAY @81
 ++@82+RegHelp
 ++@83+RegGoingOn
 ++@78+RegMetaphor
END

IF ~~ THEN BEGIN RegHelp
 SAY @84 = @85
 ++@86+RegChallenge
 ++@87 EXIT
END

IF ~~ THEN BEGIN RegMetaphor
 SAY @88
 ++@89+RegHelp
 ++@90+RegGoingOn
 ++@91+RegHelp
END

IF ~~ THEN BEGIN RegShadow
 SAY @92
 ++@93+RegNoTime
 ++@94+RegHelp
 ++@95+RegMetaphor
END

IF ~~ THEN BEGIN RegChallenge
 SAY @60
 ++@96+RegJoin
 ++@97 EXIT
END

IF ~~ THEN BEGIN RegJoin
 SAY @98
 ++@99 DO ~JoinParty()~ EXIT
 ++@100 EXIT
END

IF ~~ THEN BEGIN RegNoTime
 SAY @101
 ++@102+RegHelp
 ++@103 DO ~ReputationInc(-3)~+RegSuffer
END

IF ~~ THEN BEGIN RegSuffer
 SAY @104 = @105
 IF ~InParty("Jaheira")~ THEN EXTERN JAHEIRAJ PlayerCruel
 IF ~InParty("Aerie")~ THEN EXTERN AERIEJ PlayerMean
 IF ~~ THEN REPLY @106 EXIT
END

IF ~!NumTimesTalkedTo(0)
    !Dead("Cefaldor")~ THEN BEGIN RetFaldNotDead
 SAY @107
 ++@108+RetJoin
 ++@109 EXIT
 ++@110 EXIT
END

IF ~~ THEN BEGIN RetJoin
 SAY @111
 IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Dead("Cefaldor")~ THEN BEGIN FaldornDead
 SAY @112 = @113
 ++@114+FalTouch
 +~NumTimesTalkedTo(0)~+@115+FalWho
 ++@116+FalFondle
 ++@117+FalWelcome
END

IF ~~ THEN BEGIN FalTouch
 SAY @118
 ++@119+FalGo
 ++@120+FalNotNecessary
END

IF ~~ THEN BEGIN FalWho
 SAY @121 = @122
 ++@123+FalGo
 +~!InParty("Nalia")~+@124+FalHelp
 +~InParty("Nalia")~+@124 EXTERN NALIAJ Helping
END

IF ~~ THEN BEGIN FalFondle
 SAY @125 = @126
 IF ~~ THEN GOTO FalGo2
END

IF ~~ THEN BEGIN FalWelcome
 SAY @127
 IF ~~ THEN GOTO FalGo2
END

IF ~~ THEN BEGIN FalGo
 SAY @128 = @129
 ++@130 DO ~JoinParty()~ EXIT
 ++@131+FalRejected
END

IF ~~ THEN BEGIN FalNotNecessary
 SAY @132
 IF ~~ THEN GOTO FalGo2
END

IF ~~ THEN BEGIN FalHelp
 SAY @133 = @134
 IF ~~ THEN DO ~ReputationInc(1)~ GOTO FalGo2
END

IF ~~ THEN BEGIN FalGo2
 SAY @135 = @136
 ++@137 DO ~JoinParty()~ EXIT
 ++@138+FalRejected
END

IF ~~ THEN BEGIN FalRejected
 SAY @139
 IF ~~ THEN EXIT
END

APPEND ~NALIAJ~

IF ~~ THEN BEGIN Helping
 SAY @140
 IF ~~ THEN EXTERN R#ALLIS FalHelp
END

END // APPEND

APPEND ~AERIEJ~

IF ~~ THEN BEGIN HelpHer
 SAY @141
 IF ~~ THEN EXTERN R#ALLIS NLHelp
END

IF ~~ THEN BEGIN PlayerMean
 SAY @142 = @143
 IF ~~ THEN EXTERN R#ALLIS RegHelp
END

END // APPEND

APPEND ~ANOMENJ~

IF ~~ THEN BEGIN PlayerIsCruel
 SAY @146 = @147
 IF ~~ THEN EXTERN R#ALLIS NLHelp
END

END // APPEND

APPEND R#ALLIS

IF ~~ THEN BEGIN NLWish
 SAY @148
 IF ~~ THEN EXIT
END

END
