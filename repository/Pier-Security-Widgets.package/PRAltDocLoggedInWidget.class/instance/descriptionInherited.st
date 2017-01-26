accessing-descriptions
descriptionInherited
	<magritteDescription>
	^ MABooleanDescription new
		parameterName: 'inherited';
		accessor: #inherited;
		label: 'Inherited';
		default: false;
		priority: 110;
		beRequired;
		yourself