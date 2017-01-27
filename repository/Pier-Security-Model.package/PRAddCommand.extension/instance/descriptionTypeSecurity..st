*pier-security-model-private
descriptionTypeSecurity: aDescription
	"Only list the structures with that the current user can actually add."

	<magritteDescription: #descriptionType>
	^ aDescription
		options: self structureClassesSecurity;
		yourself