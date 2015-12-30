testing
isValidCommand: aCommandClass in: aContext
 	"Answer ==true== if the receiver accepts to execute ==aCommandClass== in ==aContext==. This message is the combination of ==#isApplyableCommand:in:== and ==#isAllowedCommand:in:==. It should not be overridden."

	^ (self isApplyableCommand: aCommandClass in: aContext)
		and: [ self isAllowedCommand: aCommandClass in: aContext ]