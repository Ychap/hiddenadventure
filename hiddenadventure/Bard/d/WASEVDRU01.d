ADD_TRANS_TRIGGER ~SEVDRU01~ 7 ~!Global("WABardforSH","Global",1)~ DO 0
EXTEND_BOTTOM SEVDRU01 7
  IF ~Global("WABardforSH","Global",1)~ THEN REPLY @0 GOTO WASEVDRU01
END

APPEND SEVDRU01

IF ~~ THEN BEGIN WASEVDRU01
	SAY @1 
	IF ~~ THEN DO ~AddexperienceParty(100)
	SetGlobal("WABardforSH","Global",2)
	EscapeArea()~ EXIT
END

END