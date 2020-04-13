BEGIN ~R#ALLISB~

CHAIN IF ~InParty("Cernd")
	  See("Cernd")
	  !StateCheck("Cernd",STATE_SLEEPING)
	  CombatCounter(0)
	  Global("Cernd1","LOCALS",0)~ THEN R#ALLISB Cernd1Chain @0
 DO ~SetGlobal("Cernd1","LOCALS",1)~
 == BEDWIN IF ~InParty("Edwin")~ THEN @1
 == R#ALLISB IF ~InParty("Edwin")~ THEN @2
 == BCERND @3
EXIT

CHAIN IF ~InParty("Minsc")
          See("Minsc")
          !StateCheck("Minsc",STATE_SLEEPING)
	  CombatCounter(0)
          Global("Minsc1","LOCALS",0)~ THEN R#ALLISB Minsc1Chain @4
 DO ~SetGlobal("Minsc1","LOCALS",1)~
 == BMINSC @5
 == R#ALLISB @6
 == BMINSC @7
 == R#ALLISB @8
 == BMINSC @9
EXIT

CHAIN IF ~InParty("Jaheira")
	  See("Jaheira")
	  !StateCheck("Jaheira",STATE_SLEEPING)
	  CombatCounter(0)
	  Global("Jaheira1","LOCALS",0)~ THEN R#ALLISB Jaheira1Chain @10
 DO ~SetGlobal("Jaheira1","LOCALS",1)~
 == BJAHEIR @11
 == R#ALLISB @12
END

CHAIN IF ~InParty("Edwin")
	  See("Edwin")
	  !StateCheck("Edwin",STATE_SLEEPING)
	  CombatCounter(0)
	  Global("Edwin1","LOCALS",0)~ THEN R#ALLISB Edwin1Chain @13
 DO ~SetGlobal("Edwin1","LOCALS",1)~
 == BEDWIN @14
 == R#ALLISB @15
 == BEDWIN @16
 == R#ALLISB @17
EXIT

CHAIN IF ~InParty("r#allison")
	  See("r#allison")
	  !StateCheck("r#allison",STATE_SLEEPING)
	  CombatCounter(0)
	  Global("Allison1","LOCALS",0)~ THEN BHAERDA Allison1Chain @18
 DO ~SetGlobal("Allison1","LOCALS",1)~
 == R#ALLISB @19
 == BHAERDA @20
 == R#ALLISB @21
EXIT

CHAIN IF ~InParty("r#allison")
	  See("r#allison")
	  !StateCheck("r#allison",STATE_SLEEPING)
	  CombatCounter(0)
	  Global("Allison1","LOCALS",0)~ THEN BKELDOR Allison1Chain @22
 DO ~SetGlobal("Allison1","LOCALS",1)~
 == R#ALLISB @23 = @24
 == BKELDOR @25
 == R#ALLISB @26
 == BKELDOR @27
EXIT

CHAIN IF ~InParty("Jaheira")
	  See("Jaheira")
	  !StateCheck("Jaheira",STATE_SLEEPING)
	  CombatCounter(0)
	  Global("Jaheira2","LOCALS",0)~ THEN R#ALLISB Jaheira1Chain @28
 DO ~SetGlobal("Jaheira2","LOCALS",1)~
 == BJAHEIR @29
 == R#ALLISB @30
 == BJAHEIR @31
EXIT

CHAIN IF ~InParty("Anomen")
	  See("Anomen")
	  !StateCheck("Anomen",STATE_SLEEPING)
	  Alignment("Anomen",LAWFUL_GOOD)
	  CombatCounter(0)
	  Global("Anomen1","LOCALS",0)~ THEN R#ALLISB Anomen1Chain @32
 DO ~SetGlobal("Anomen1","LOCALS",1)~
 == BANOMEN @33 = @34
 == R#ALLISB @35
 == BANOMEN @36 = @37
 == R#ALLISB @38
 == BANOMEN @39 = @40
 == R#ALLISB @41
 == BANOMEN @42
 == R#ALLISB @43
 == BANOMEN @44
EXIT

CHAIN IF ~InParty("Sarevok")
          See("Sarevok")
          !StateCheck("Sarevok",STATE_SLEEPING)
	  CombatCounter(0)
          Global("Sarevok1","LOCALS",0)~ THEN R#ALLISB Sarevok1Chain @45
 DO ~SetGlobal("Sarevok1","LOCALS",1)~
 == BSAREV25 @46
 == R#ALLISB @47
 == BSAREV25 @48
EXIT

CHAIN IF ~InParty("r#allison")
	  See("r#allison")
	  !StateCheck("r#allison",STATE_SLEEPING)
	  CombatCounter(0)
	  Global("r#Allison1","LOCALS",0)~ THEN BJAN Allison1Chain @49
 DO ~SetGlobal("r#Allison1","LOCALS",1)~
 == R#ALLISB @50
 == BJAN @51
 == R#ALLISB @52
 == BJAN @53
 == BEDWIN IF ~InParty("Edwin")~ THEN @54
 == R#ALLISB @55
 == BJAN @56
 == R#ALLISB @57
 == BJAN @58
EXIT

CHAIN IF ~InParty("Cernd")
	  See("Cernd")
	  !StateCheck("Cernd",STATE_SLEEPING)
	  !AreaType(FOREST)
	  CombatCounter(0)
	  Global("Cernd2","LOCALS",0)~ THEN R#ALLISB Cernd2Chain @59
 DO ~SetGlobal("Cernd2","LOCALS",1)~
 == BCERND @60
 == R#ALLISB @61
EXIT

CHAIN IF ~InParty("Imoen2")
	  See("Imoen2")
	  !StateCheck("Imoen2",STATE_SLEEPING)
	  CombatCounter(0)
	  Global("Imoen1","LOCALS",0)~ THEN R#ALLISB Imoen1Chain @62 = @63
 DO ~SetGlobal("Imoen1","LOCALS",1)~
 == IMOEN2J @64
 == R#ALLISB @65
 == IMOEN2J @66
 == R#ALLISB @67
EXIT
