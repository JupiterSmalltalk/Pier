accessing-descriptions
descriptionDocument
	<magritteDescription>
	^ super descriptionDocument
		propertyAt: #public put: true;
		beRequired;
		yourself