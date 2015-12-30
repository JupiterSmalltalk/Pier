*pier-security-descriptions
descriptionOwner
	<magritteDescription>
	^ MAToOneRelationDescription new
		classes: (Array with: PUUser);
		parameterName: 'owner';
		accessor: #owner;
		label: 'Owner';
		priority: 200;
		yourself