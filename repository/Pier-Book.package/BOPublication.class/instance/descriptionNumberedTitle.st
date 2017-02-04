descriptions
descriptionNumberedTitle
	<magritteDescription>
	^ MABooleanDescription new
		checkboxLabel: 'Numbered title';
		accessor: #numberedTitle;
		label: 'Display';
		default: true;
		priority: 150;
		beEditable;
		yourself