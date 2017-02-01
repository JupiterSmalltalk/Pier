accessing-description
descriptionShowExponential
	<magritteDescription>
	^ MABooleanDescription new
		checkboxLabel: 'Exponential';
		accessor: #showExponential;
		default: false;
		priority: 235;
		yourself