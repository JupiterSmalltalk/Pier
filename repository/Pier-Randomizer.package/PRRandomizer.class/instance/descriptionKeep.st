accessing-descriptions
descriptionKeep
	<magritteDescription>
	^ MABooleanDescription new
		comment: 'Keep the same random child during the lifetime of a session';
		accessor: #keep;
		default: true;
		priority: 100;
		label: 'Keep';
		yourself