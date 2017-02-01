accessing
descriptionSpeed
	<magritteDescription>
	^ MANumberDescription new
		comment: 'Transition speed';
		parameterName: 'speed';
		accessor: #speed;
		label: 'Speed';
		priority: 150;
		default: 1000;
		bePositive;
		beInteger;
		yourself