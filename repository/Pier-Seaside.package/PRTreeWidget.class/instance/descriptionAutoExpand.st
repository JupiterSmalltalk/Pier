accessing-description
descriptionAutoExpand
	<magritteDescription>
	^ MABooleanDescription new
		comment: 'Automatically expand to current structure.';
		default: self class defaultAutoExpand;
		parameterName: 'auto-expand';
		accessor: #autoExpand;
		label: 'Auto Expand';
		priority: 300;
		yourself