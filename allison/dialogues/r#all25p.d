BEGIN ~R#ALL25P~

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN LeaveParty
 SAY @0
 ++@1+Kicked
 ++@2+Rejoin
END

IF ~~ THEN BEGIN Kicked
 SAY @3
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN Rejoin
 SAY @4
 IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN Return
 SAY @5
 ++@6 DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
 ++@7 EXIT
END
