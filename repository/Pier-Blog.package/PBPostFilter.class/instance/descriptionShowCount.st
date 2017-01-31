accessing-descriptions
descriptionShowCount
	<magritteDescription>
	^ MABooleanDescription new
		parameterName: 'show-count';
		accessor: #showCount;
		label: 'Show Count';
		default: true;
		priority: 210;
		yourself