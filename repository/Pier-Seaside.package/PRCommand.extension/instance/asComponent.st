*pier-seaside-converting
asComponent
	"Answer a compoent to configure the edit operation of the receiver. This does not require to be a Magritte component, but in most cases it is."

	^ super asComponent
		addValidatedForm: self buttonSpecification;
		yourself