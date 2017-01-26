accessing-description
descriptionWith
	<magritteDescription>
	^ MABooleanDescription new
		comment: 'Apply changes to the current structure.';
		parameterName: 'current';
		default: self class defaultWith;
		accessor: #with;
		label: 'Current';
		priority: 100;
		beRequired;
		yourself