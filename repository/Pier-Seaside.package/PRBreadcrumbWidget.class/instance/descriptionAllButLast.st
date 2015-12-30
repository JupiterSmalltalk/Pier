accessing-descriptions
descriptionAllButLast
	<magritteDescription>
	^ MABooleanDescription new
		default: self class defaultAllButLast;
		parameterName: 'all-but-last';
		accessor: #allButLast;
		label: 'All But Last';
		priority: 300;
		yourself