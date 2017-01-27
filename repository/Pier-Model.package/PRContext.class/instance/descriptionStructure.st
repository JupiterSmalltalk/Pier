descriptions
descriptionStructure
	<magritteDescription>
	^ PRStructureDescription new
		accessor: (MASelectorAccessor read: #structure write: #setStructure:);
		label: 'Structure';
		priority: 100;
		yourself