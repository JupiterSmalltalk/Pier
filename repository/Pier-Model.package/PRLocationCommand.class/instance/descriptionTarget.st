accessing-description
descriptionTarget
	<magritteDescription>
	^ PRStructureDescription new
		parameterName: 'target';
		accessor: #target;
		label: 'Target';
		priority: 100;
		beRequired;
		yourself