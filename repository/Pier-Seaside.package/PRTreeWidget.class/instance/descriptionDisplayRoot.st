accessing-description
descriptionDisplayRoot
	<magritteDescription>
	^ MABooleanDescription new
		comment: 'Whether the root node of the tree should be displayed';
		default: self class defaultDisplayRoot;
		parameterName: 'display-root';
		accessor: #displayRoot;
		label: 'Display Root';
		priority: 320;
		yourself