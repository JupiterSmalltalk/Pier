accessing-description
descriptionFirstName
	<magritteDescription>
	^ MAStringDescription new
		group: 'Additional Information';
		propertyAt: #public put: true;
		propertyAt: #report put: true;
		parameterName: 'first-name';
		accessor: #firstName;
		label: 'First Name';
		priority: 900;
		yourself