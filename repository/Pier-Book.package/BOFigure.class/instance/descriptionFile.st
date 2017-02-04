accessing-description
descriptionFile
	<magritteDescription>
	^ super descriptionFile
		addCondition: (MACondition selector: #isImage) labelled: 'Select an image';
		yourself