accessing-description
descriptionName
	<magritteDescription>
	^ MAStringDescription new
		addCondition: (MACondition receiver: PRPath selector: #isValidName:) labelled: 'Invalid structure name';
		parameterName: 'name';
		accessor: #name;
		label: 'Name';
		priority: 110;
		beRequired;
		yourself