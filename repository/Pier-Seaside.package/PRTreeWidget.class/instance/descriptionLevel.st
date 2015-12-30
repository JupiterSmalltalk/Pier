accessing-description
descriptionLevel
	<magritteDescription>
	^ MANumberDescription new
		comment: 'The level from which the tree should be displayed.';
		default: self class defaultLevel;
		parameterName: 'level';
		accessor: #level;
		label: 'Level';
		priority: 230;
		beInteger;
		min: 0;
		yourself