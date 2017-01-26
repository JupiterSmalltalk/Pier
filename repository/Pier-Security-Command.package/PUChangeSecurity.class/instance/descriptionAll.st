accessing-description
descriptionAll
	<magritteDescription>
	^ MABooleanDescription new
		comment: 'Apply changes recursively to all children.';
		parameterName: 'recursive';
		default: self class defaultAll;
		label: 'Recursive';
		accessor: #all;
		priority: 110;
		beRequired;
		yourself