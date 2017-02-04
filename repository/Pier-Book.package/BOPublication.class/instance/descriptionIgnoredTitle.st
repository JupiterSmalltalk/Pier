descriptions
descriptionIgnoredTitle
	<magritteDescription>
	^ MABooleanDescription new
		checkboxLabel: 'Ignore title';
		accessor: #ignoredTitle;
		label: 'Export';
		default: false;
		priority: 160;
		beEditable;
		yourself