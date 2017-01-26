accessing-description
descriptionUsers
	<magritteDescription>
	
	| defaultUsers |
	defaultUsers := self defaultUsers.
	
	^ MAMultipleOptionDescription new
		options: defaultUsers;
		componentClass: MAListCompositonComponent;
		reference:
				(defaultUsers anyOne descriptionContainer
						add: defaultUsers anyOne descriptionName;
						yourself);
		propertyAt: #report put: true;
		accessor: #users;
		label: 'Users';
		priority: 200;
		beDistinct;
		yourself