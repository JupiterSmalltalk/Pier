descriptions
descriptionDocument
	<magritteDescription>
	^ PRDocumentDescription new
		accessor: #document;
		label: 'Contents';
		priority: 600;
		beReadonly;
		beEditable;
		beHidden;
		yourself