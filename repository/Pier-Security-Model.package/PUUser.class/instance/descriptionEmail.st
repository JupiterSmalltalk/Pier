accessing-description
descriptionEmail
	<magritteDescription>
	^ MAStringDescription new
		group: 'Additional Information';
		propertyAt: #public put: true;
		propertyAt: #report put: true;
		parameterName: 'email';
		accessor: #email;
		label: 'Email';
		priority: 920;
		yourself