accessing-description
descriptionDocument
	<magritteDescription>
	^ PRDocumentDescription new
		accessor: #document;
		label: 'Contents';
		stringAccessor: #contents;
		beSearchable;
		priority: 500;
		beEditable;
		yourself