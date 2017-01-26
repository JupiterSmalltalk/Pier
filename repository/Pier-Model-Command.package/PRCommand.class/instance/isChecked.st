testing
isChecked
	"Answer ==true== if the command should be checked before execution, e.g. the method ==#doValidate== should be executed at all."

	^ checked ifNil: [ checked := true ]