testing
isValidIn: aContext
	"Verify that a view as a meaning for the context aContext. Override this message, to add new tests, but do not forget to call this super implementation."

	^ self isAbstract not and: [ aContext structure isValidView: self in: aContext ]