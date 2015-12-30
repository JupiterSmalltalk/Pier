accessing-description
descriptionGroup
	<magritteDescription>
	
	| groupInstances |
	groupInstances := self groupInstances.
	^ MASingleOptionDescription new
		comment: 'Changes the group ownership to the selected group.';
		options: groupInstances;
		reference: groupInstances anyOne magritteDescription;
		undefined: '(unchanged)';
		parameterName: 'group';
		accessor: #group;
		label: 'Group';
		priority: 200;
		beSorted;
		yourself