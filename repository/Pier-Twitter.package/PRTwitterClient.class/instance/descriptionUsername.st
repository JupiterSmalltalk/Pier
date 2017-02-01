accessing-descriptions
descriptionUsername
	<magritteDescription>
	^ MAStringDescription new
		accessor: #username;
		label: 'Username';
		priority: 100;
		default: '';
		yourself