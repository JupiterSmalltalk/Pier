accessing
descriptionDelay
	<magritteDescription>
	^ MANumberDescription new
		comment: 'Initial delay';
		parameterName: 'delay';
		accessor: #delay;
		label: 'Delay';
		priority: 130;
		default: 4000;
		bePositive;
		beInteger;
		yourself