descriptions
descriptionTime
	<magritteDescription>
	^ MATimeDescription new
		accessor: #(#command #time);
		parameterName: 'time';
		priority: 400;
		label: 'Time';
		beReadonly;
		yourself