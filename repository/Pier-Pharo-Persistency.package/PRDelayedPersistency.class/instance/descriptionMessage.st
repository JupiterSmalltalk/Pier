descriptions
descriptionMessage
	<magritteDescription>
	^ MAStringDescription new
		accessor: #message;
		label: 'Message';
		group: 'Status';
		priority: 200;
		beReadonly;
		yourself