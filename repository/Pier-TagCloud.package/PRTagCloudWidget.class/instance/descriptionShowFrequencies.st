accessing-description
descriptionShowFrequencies
	<magritteDescription>
	^ MABooleanDescription new
		accessor: #showFrequencies;
		checkboxLabel: 'Frequencies';
		default: false;
		label: 'Show';
		priority: 230;
		yourself