initialization
initialize
	super initialize.
	component := (self magritteDescription asComponentOn: self)
		addValidatedForm;
		yourself