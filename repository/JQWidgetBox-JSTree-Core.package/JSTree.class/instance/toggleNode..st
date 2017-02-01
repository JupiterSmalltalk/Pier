actions
toggleNode: aNode
	aNode ifNil: [^self].
	self action: 'toggle_node' arguments: (Array with:aNode)