accessing-descriptions
descriptionPublication
	<magritteDescription>
	^ MATimeStampDescription new
		accessor: #publication;
		comment: 'The publication date of the entry.';
		label: 'Publication';
		priority: 310;
		beEditable;
		yourself