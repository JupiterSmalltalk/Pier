accessing-descriptions
descriptionExampleText
	<magritteDescription>
	^ MAStringDescription new
		parameterName: 'example';
		accessor: #exampleText;
		label: 'Example';
		priority: 310;
		yourself