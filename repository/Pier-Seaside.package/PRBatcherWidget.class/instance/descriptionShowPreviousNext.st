accessing-descriptions
descriptionShowPreviousNext
	<magritteDescription>
	^ MABooleanDescription new
		parameterName: 'show-previous-next';
		checkboxLabel: 'Previous/Next';
		accessor: #showPreviousNext;
		default: true;
		priority: 210;
		yourself