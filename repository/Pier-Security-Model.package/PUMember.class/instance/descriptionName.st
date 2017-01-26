accessing-description
descriptionName
	<magritteDescription>
	^ MAStringDescription new
		propertyAt: #public put: true;
		propertyAt: #report put: true;
		parameterName: 'name';
		accessor: #name;
		label: 'Name';
		priority: 100;
		beReadonly;
		beRequired;
		yourself