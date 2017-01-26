accessing-description
descriptionLevel
	<magritteDescription>
	^ MANumberDescription new
		default: self class defaultLevel;
		parameterName: 'level';
		accessor: #level;
		label: 'Level';
		priority: 300;
		beInteger;
		min: 0;
		yourself