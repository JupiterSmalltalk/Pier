helpers
isPier3
	^ isPier3 ifNil: [
		isPier3 := (Smalltalk at: #MAPragmaBuilder ifAbsent: [ ]) notNil ]