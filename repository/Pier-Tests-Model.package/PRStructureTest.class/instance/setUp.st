running
setUp
	root := self rootInstance.
	folder := self folderInstance.
	child := self childInstance.
	structure := self actualInstance.

	self root addChild: self folder.
	self folder addChild: self child.
	self folder addChild: self structure