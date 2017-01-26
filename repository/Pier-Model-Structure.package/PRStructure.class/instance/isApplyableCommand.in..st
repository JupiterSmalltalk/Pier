testing
isApplyableCommand: aCommandClass in: aContext
 	"Answer ==true== if the receiver accepts ==aCommandClass== as applyable in ==aContext== on the receiver. If a command class is applyable or not is a question of saneness and compatibility, not of security. This method should be overridden by subclasses who want to forbid some commands."

	^ self isKindOf: aCommandClass structureClass