private
recursiveDispatcherHandersDo: aBlock
	self recursiveHandersOn: WADispatcher default path: '' do: aBlock