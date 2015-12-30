accessing-description
descriptionUsername
	<magritteDescription>
	^ MAStringDescription new
		parameterName: 'username';
		accessor: #username;
		label: 'Username';
		priority: 100;
		beRequired;
		yourself