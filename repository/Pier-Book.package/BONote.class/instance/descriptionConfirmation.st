descriptions
descriptionConfirmation
	<magritteDescription>
	^ MABooleanDescription new
		addCondition: (MACondition selector: #yourself) labelled: 'Please, confirm submission by clicking the checkbox';
		checkboxLabel: 'Confirm submission by clicking the checkbox';
		propertyAt: #public put: true;
		accessor: #confirmation;
		label: 'Confirmation';
		priority: 600;
		beEditable;
		yourself