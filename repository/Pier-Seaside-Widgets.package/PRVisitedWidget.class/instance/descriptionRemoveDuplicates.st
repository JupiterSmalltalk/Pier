accessing-description
descriptionRemoveDuplicates
	<magritteDescription>
	^ MABooleanDescription new
		comment: 'Avoid duplicates in the list';
		parameterName: 'remove-duplicates';
		accessor: #removeDuplicates;
		label: 'Remove Duplicates';
		default: true;
		priority: 260;
		yourself