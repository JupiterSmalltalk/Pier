accessing-description
descriptionExampleText
	<magritteDescription>
	^ MAStringDescription new
		accessor: #exampleText;
		default: 'Search';
		label: 'Example';
		priority: 400;
		yourself