accessing-description
descriptionExpandActive
	<magritteDescription>
	^ MABooleanDescription new
		default: self class defaultExpanded;
		parameterName: 'expand';
		accessor: #expandActive;
		label: 'Expand active';
		priority: 310;
		yourself