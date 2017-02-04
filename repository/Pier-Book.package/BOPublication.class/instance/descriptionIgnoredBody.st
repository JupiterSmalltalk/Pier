descriptions
descriptionIgnoredBody
	<magritteDescription>
	^ MABooleanDescription new
		checkboxLabel: 'Ignore body';
		accessor: #ignoredBody;
		default: false;
		priority: 162;
		beEditable;
		yourself