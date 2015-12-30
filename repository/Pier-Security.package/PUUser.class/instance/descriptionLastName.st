accessing-description
descriptionLastName
	<magritteDescription>
	^ MAStringDescription new
		group: 'Additional Information';
		propertyAt: #public put: true;
		propertyAt: #report put: true;
		parameterName: 'last-name';
		accessor: #lastName;
		label: 'Last Name';
		priority: 910;
		yourself