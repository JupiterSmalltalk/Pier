events
renameBlock: aRenameBlock
	self
		bindEvent: 'rename.jstree'
		parameters: self renameEventParameters
		eventHandlerBlock: aRenameBlock