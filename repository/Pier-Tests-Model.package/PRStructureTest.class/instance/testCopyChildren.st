tests-copying
testCopyChildren
	| folderCopy childCopy structureCopy |
	folderCopy := self folder copy.
	childCopy := folderCopy childrenDecoration at: 'child'.
	structureCopy := folderCopy childrenDecoration at: 'structure'.

	self deny: self folder = folderCopy.
	self deny: self child = childCopy.
	self deny: self structure = structureCopy.

	self assert: self folder parent = self root.
	self assert: self child parent = self folder.
	self assert: self structure parent = self folder.

	self assert: folderCopy parent isNil.
	self assert: childCopy parent = folderCopy.
	self assert: structureCopy parent = folderCopy