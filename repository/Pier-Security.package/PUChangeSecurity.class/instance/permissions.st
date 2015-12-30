accessing-operation
permissions
	^ permissions ifNil: [ permissions := self accessor read: self structure ]