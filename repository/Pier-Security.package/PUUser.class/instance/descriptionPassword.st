accessing-description
descriptionPassword
	<magritteDescription>
	^ MAPasswordDescription new
		accessor: #password;
		label: 'Password';
		priority: 200;
		propertyAt: #public put: true;
		beRequired;
		yourself