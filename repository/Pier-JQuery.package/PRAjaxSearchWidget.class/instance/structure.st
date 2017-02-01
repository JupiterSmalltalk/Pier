accessing-convenience
structure
	"Answer the structure from where the widget should begin it's recursive search"
	^ structure ifNil: [ structure := self context root ]