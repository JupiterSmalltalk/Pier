accessing-descriptions
descriptionCount
	<magritteDescription>
	^ MASingleOptionDescription new
		label: 'Number of updates';
		options: (1 to: 20);
		accessor: #count;
		priority: 200;
		default: 3;
		yourself