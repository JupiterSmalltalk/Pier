accessing-descriptions
descriptionAuthor
	<magritteDescription>
	^ MAStringDescription new
		accessor: #author;
		comment: 'The author of the entry.';
		label: 'Author';
		priority: 300;
		beRequired;
		beEditable;
		yourself