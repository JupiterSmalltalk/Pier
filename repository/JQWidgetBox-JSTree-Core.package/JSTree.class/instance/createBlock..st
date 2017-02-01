events
createBlock: aCreateBlock

	self
		bindEvent: 'create.jstree'
		parameters: self createEventParameters
		eventHandlerBlock: aCreateBlock