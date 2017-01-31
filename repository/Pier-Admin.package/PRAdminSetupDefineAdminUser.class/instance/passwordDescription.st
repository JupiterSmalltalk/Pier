magritte descriptions
passwordDescription
	<magritteDescription>
	^ MAPasswordDescription new
		parameterName: 'password';
		accessor: #password;
		componentClass: TWBSVerifiedPasswordComponent;
		label: 'Password';
		priority: 200;
		placeholder: 'admin user password';
		beRequired;
		yourself