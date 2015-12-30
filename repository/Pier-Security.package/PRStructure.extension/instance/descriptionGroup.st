*pier-security-descriptions
descriptionGroup
	<magritteDescription>
	^ MAToOneRelationDescription new
		classes: (Array with: PUGroup);
		parameterName: 'group';
		accessor: #group;
		label: 'Group';
		priority: 210;
		yourself