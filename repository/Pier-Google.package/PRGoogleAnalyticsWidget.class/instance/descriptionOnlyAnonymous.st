accessing-description
descriptionOnlyAnonymous
	<magritteDescription>
	^ MABooleanDescription new
		comment: 'Only include the widget if the user is anonymous';
		parameterName: 'only-anonymous';
		checkboxLabel: 'Anonymous User';
		accessor: #onlyAnonymous;
		default: false;
		priority: 220;
		beSetting;
		label: '';
		yourself