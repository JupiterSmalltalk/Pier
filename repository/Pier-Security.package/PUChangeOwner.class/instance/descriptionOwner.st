accessing-description
descriptionOwner
	<magritteDescription>
	
	| userInstances |
	userInstances := self userInstances.
	^ MASingleOptionDescription new
		comment: 'Changes the ownership to the selected user.';
		options: userInstances;
		reference: userInstances anyOne magritteDescription;
		undefined: '(unchanged)';
		parameterName: 'group';
		accessor: #owner;
		label: 'Owner';
		priority: 200;
		beSorted;
		yourself