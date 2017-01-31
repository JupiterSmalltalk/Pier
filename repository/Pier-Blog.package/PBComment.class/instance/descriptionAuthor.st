accessing-descriptions
descriptionAuthor
	<magritteDescription>
	^ super descriptionAuthor
		propertyAt: #public put: true;
		yourself