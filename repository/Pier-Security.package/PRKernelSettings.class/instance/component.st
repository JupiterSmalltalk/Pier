accessing
component
	^ component ifNil: [
		component := self kernel asComponent
			addValidatedForm;
			yourself ]