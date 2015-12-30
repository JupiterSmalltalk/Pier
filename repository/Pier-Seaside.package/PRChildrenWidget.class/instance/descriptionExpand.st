accessing-description
descriptionExpand
	" deprecated. Please use expanded "
	^ MABooleanDescription new
		default: self class defaultExpanded;
		parameterName: 'expand';
		accessor: #expand;
		label: 'Expand';
		priority: 310;
		yourself