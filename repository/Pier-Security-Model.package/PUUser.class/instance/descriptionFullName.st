accessing-description
descriptionFullName
	<magritteDescription>
	^ MAStringDescription new
		parameterName: 'full-name';
		accessor: #fullName;
		beReadonly;
		beHidden;
		yourself