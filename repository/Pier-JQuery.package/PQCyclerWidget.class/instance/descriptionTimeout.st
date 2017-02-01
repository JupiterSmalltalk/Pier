accessing
descriptionTimeout
	<magritteDescription>
	^ MANumberDescription new
		comment: 'Timeout';
		parameterName: 'timeout';
		accessor: #timeout;
		label: 'Timeout';
		priority: 120;
		default: 3000;
		bePositive;
		beInteger;
		yourself