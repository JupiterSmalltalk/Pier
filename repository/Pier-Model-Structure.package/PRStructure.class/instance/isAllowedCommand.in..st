testing
isAllowedCommand: aCommandClass in: aContext
 	"Answer ==true== if the receiver accepts ==aCommandClass== as allowed in ==aContext== on the receiver. If a command class is allowed is a security question and should therefore only depend on the permissions in the current context. The default implementation delegates the decision to the decorations of the receiver. Therefor this method should never be overridden by subclasses."

	^ self decorations allSatisfy: [ :each |
		each
			isAllowedCommand: aCommandClass
			in: aContext ]