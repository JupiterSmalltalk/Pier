accessing-description
descriptionDocument
	<magritteDescription>
	^ PRDocumentDescription new
		default: self class defaultDocument;
		parameterName: 'document';
		accessor: #document;
		label: 'Document';
		beRequired;
		yourself