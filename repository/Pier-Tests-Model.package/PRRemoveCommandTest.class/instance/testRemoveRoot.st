tests
testRemoveRoot
	context := self context
		structure: self kernel root
		command: self actualClass new.
	self
		should: [ context command execute ]
		raise: PRStructureError