events
selectBlock: aSelectBlock

	self
		bindEvent: 'select_node.jstree'
		parameters: self renameEventParameters
		eventHandlerBlock: aSelectBlock