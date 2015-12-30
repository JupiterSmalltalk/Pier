protected
apply: aCommand
	"This method should not be called directly. It performs the basic execution of aCommand in the context of the receiver."

	aCommand isChecked
		ifTrue: [ aCommand doValidate ].
	aCommand doExecute