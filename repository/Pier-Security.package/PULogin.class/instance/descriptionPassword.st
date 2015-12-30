accessing-description
descriptionPassword
	<magritteDescription>
	^ MAPasswordDescription new
		parameterName: 'password';
		accessor: #password;
		label: 'Password';
		priority: 200;
		beRequired;
		yourself