accessing-descriptions
descriptionPassword
	<magritteDescription>
	^ MAPasswordDescription new
		accessor: #password;
		label: 'Password';
		priority: 110;
		default: '';
		yourself