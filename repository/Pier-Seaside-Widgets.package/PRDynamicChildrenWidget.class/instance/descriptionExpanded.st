accessing-description
descriptionExpanded
	<magritteDescription>
	^ MABooleanDescription new
		default: self class defaultExpanded;
		parameterName: 'expand';
		accessor: #expanded;
		label: 'Expand';
		priority: 310;
		yourself