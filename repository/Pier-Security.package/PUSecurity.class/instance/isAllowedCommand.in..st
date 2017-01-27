testing
isAllowedCommand: aCommandClass in: aContext
	"Answer if aCommandClass has any permissions in the current context."

	^ aCommandClass permissions
		anySatisfy: [ :permission | self hasPermission: permission for: aContext user ]