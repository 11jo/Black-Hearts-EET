BEGIN WIFIREGI

CHAIN IF ~NumTimesTalkedTo(0)~ THEN WIFIREGI WIFG1
	@436
	== ALORAJ IF ~InParty("Alora") InMyArea("Alora") !StateCheck("Alora",CD_STATE_NOTVALID)~ THEN @437
END
	++ @438 + WIFG2
	++ @439 + WIFG3
	++ @440 + WIFG4
	
CHAIN IF ~NumTimesTalkedToGT(0)~ THEN WIFIREGI WIFG19
	@441
END
	++ @442 EXIT
	+ ~PartyHasItem("WIMISC11")~ + @443 + WIFG18
	
CHAIN WIFIREGI WIFG2
	@444
	== TIAXJ IF ~InParty("Tiax") InMyArea("Tiax") !StateCheck("Tiax",CD_STATE_NOTVALID)~ THEN @445
END	
	++ @446 + WIFG5
	++ @447 + WIFG3
	
CHAIN WIFIREGI WIFG3
	@448
	== BRANWJ IF ~InParty("Branwen") InMyArea("Branwen") !StateCheck("Branwen",CD_STATE_NOTVALID)~ THEN @449
END
	++ @450 + WIFG6

CHAIN WIFIREGI WIFG4
	@451
	== KIVANJ IF ~InParty("Kivan") InMyArea("Kivan") !StateCheck("Kivan",CD_STATE_NOTVALID)~ THEN @452
END
	++ @453 + WIFG6
	
CHAIN WIFIREGI WIFG5
	@454
END
	++ @455 + WIFG3
	
CHAIN WIFIREGI WIFG6
	@456
	== VICONJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @457
END
	++ @458 + WIFG7
	++ @459 + WIFG9
	++ @460 + WIFG8

CHAIN WIFIREGI WIFG7
	@461 EXTERN WIFIREGI WIFG10

CHAIN WIFIREGI WIFG8
	@462 EXTERN WIFIREGI WIFG10
	
CHAIN WIFIREGI WIFG9
	@463 EXTERN WIFIREGI WIFG10

CHAIN WIFIREGI WIFG10
	@464 EXTERN WIFIREGI WIFG11
	
CHAIN WIFIREGI WIFG11
	@465
END
	++ @466 + WIFG12
	++ @467 + WIFG13
	++ @468 + WIFG14
	
CHAIN WIFIREGI WIFG12
	@469
	= @470
END
	++ @471 + WIFG15
	++ @472 + WIFG16
	++ @473 + WIFG17
	+ ~PartyHasItem("WIMISC11")~ + @474 + WIFG18

CHAIN WIFIREGI WIFG13
	@475 EXTERN WIFIREGI WIFG12

CHAIN WIFIREGI WIFG14
	@476 EXIT

CHAIN WIFIREGI WIFG15
	@477
	== ELDOTJ IF ~InParty("Eldoth") InMyArea("Eldoth") !StateCheck("Eldoth",CD_STATE_NOTVALID)~ THEN @478
END
	++ @479 + WIFG16
	++ @480 + WIFG17
	
CHAIN WIFIREGI WIFG16
	@481 EXIT
	
CHAIN WIFIREGI WIFG17
	@482 EXIT
	
CHAIN WIFIREGI WIFG18
	@483 DO ~StartCutSceneEx("WIcuts20",TRUE) StartCutSceneMode()~ EXIT