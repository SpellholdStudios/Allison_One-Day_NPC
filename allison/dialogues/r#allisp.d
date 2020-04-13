BEGIN ~R#ALLISP~

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN AllisonKickedOut
 SAY @0
 ++@1+Kicked
 ++@2+NotKicked
END

IF ~~ THEN BEGIN Kicked
 SAY @3 = @4
 +~!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~+@5 DO ~EscapeAreaMove("ar1900",485,2364,12)
			     SetGlobal("KickedOut","LOCALS",1)~ EXIT
 +~AreaCheck("AR0601")
AreaCheck("AR0602")
AreaCheck("AR0603")
AreaCheck("AR0410")
AreaCheck("AR0411")
AreaCheck("AR0412")
AreaCheck("AR0413")
AreaCheck("AR0414")
AreaCheck("AR1512")
AreaCheck("AR1513")
AreaCheck("AR1514")
AreaCheck("AR1515")
AreaCheck("AR1516")
AreaCheck("AR1501")
AreaCheck("AR1502")
AreaCheck("AR1503")
AreaCheck("AR1504")
AreaCheck("AR1505")
AreaCheck("AR1506")
AreaCheck("AR1507")
AreaCheck("AR1508")
AreaCheck("AR1509")
AreaCheck("AR1510")
AreaCheck("AR1511")
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2200")
AreaCheck("AR2202")
AreaCheck("AR2203")
AreaCheck("AR2204")
AreaCheck("AR2205")
AreaCheck("AR2206")
AreaCheck("AR2207")
AreaCheck("AR2208")
AreaCheck("AR2209")
AreaCheck("AR2210")
AreaCheck("AR2300")
AreaCheck("AR2400")
AreaCheck("AR2401")
AreaCheck("AR2402")
AreaCheck("AR2900")
AreaCheck("AR2901")
AreaCheck("AR2902")
AreaCheck("AR2903")
AreaCheck("AR2904")
AreaCheck("AR2905")
AreaCheck("AR2906")~+@6 DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN NotKicked
 SAY @7
 IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN Return
 SAY @8 = @9
 ++@10 DO ~SetGlobal("KickedOut","LOCALS",0)
	   JoinParty()~ EXIT
 ++@11 EXIT
END
