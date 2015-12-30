accessing-descriptions
descriptionAlternate
	<magritteDescription>
	^ PRDocumentWidgetDescription new
		parameterName: 'alternate';
		accessor: #alternate;
		stringAccessor: #alternateContents;
		label: 'Alternate';
		priority: 130;
		yourself