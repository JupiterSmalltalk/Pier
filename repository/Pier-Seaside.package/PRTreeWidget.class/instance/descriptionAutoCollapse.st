accessing-description
descriptionAutoCollapse
	<magritteDescription>
	^ MABooleanDescription new
		comment: 'Automatically collaps structures not currently active.';
		default: self class defaultAutoCollapse;
		parameterName: 'auto-collapse';
		accessor: #autoCollapse;
		label: 'Auto Collapse';
		priority: 310;
		yourself