descriptions
descriptionDate
	<magritteDescription>
	^ MADateDescription new
		accessor: #(#command #date);
		parameterName: 'date';
		priority: 300;
		label: 'Date';
		beReadonly;
		yourself