support
removeNode: nodeStructure
	self rootPage incomingReferences
		toAll: (nodeStructure enumerator
			everything contents);
		do: [ :each | each target: nil ].
	nodeStructure remove.