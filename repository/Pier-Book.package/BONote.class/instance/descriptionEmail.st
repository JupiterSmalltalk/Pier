descriptions
descriptionEmail
	<magritteDescription>
	^ MAStringDescription new
		addCondition: (MACondition selector: #matches: argument: '#*@#*.#*')
			labelled: 'Please make sure to enter a valid E-Mail';
		propertyAt: #public put: true;
		accessor: #email;
		label: 'E-Mail';
		priority: 500;
		beRequired;
		beEditable;
		yourself