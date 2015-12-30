accessing-descriptions
descriptionShowFirstLast
	<magritteDescription>
	^ MABooleanDescription new
		parameterName: 'show-first-last';
		checkboxLabel: 'First/Last';
		accessor: #showFirstLast;
		label: 'Show Links';
		default: true;
		priority: 100;
		yourself