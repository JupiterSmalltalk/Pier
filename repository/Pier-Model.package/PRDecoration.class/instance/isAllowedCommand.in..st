testing
isAllowedCommand: aCommandClass in: aContext
 	"Answer ==true== if the receiver allows one to execute ==aCommandClass== in ==aContext==. The default decoration is fine with all the commands, subclasses might restrict to a selected set of commands within a given context. This method might be overridden by decorations that want to control the security."

	^ true