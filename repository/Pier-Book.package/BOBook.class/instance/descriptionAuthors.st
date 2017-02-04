descriptions
descriptionAuthors
	<magritteDescription>
	^ MAStringDescription new
		parameterName: 'authors';
		accessor: #authors;
		label: 'Authors';
		beSearchable;
		priority: 400;
		beEditable;
		yourself