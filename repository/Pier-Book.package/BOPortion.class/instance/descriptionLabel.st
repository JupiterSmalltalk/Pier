descriptions
descriptionLabel
	<magritteDescription>
	^ MAStringDescription new
		parameterName: 'label';
		accessor: #label;
		priority: 50;
		beReadonly;
		beEditable;
		yourself