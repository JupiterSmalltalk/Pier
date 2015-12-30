actions
snapshot
	| os filename |
	(os := Smalltalk classNamed: #OSProcess) isNil
		ifTrue: [ ^ self message: 'OSProcess not installed.' ].
	os thisOSProcess pid
		ifTrue: [ ^ self message: 'OSProcess does not support this platform.' ].
	filename := self namePrefix , DateAndTime now asSortableString , '.obj'.
	os thisOSProcess forkHeadlessSqueakAndDo: [
		[ self cleanup; serialize: filename ]
			ensure: [ Smalltalk quitPrimitive ] ].
	self message: 'Last snapshot ' , filename printString , ' at ' , GRPlatform current magritteTimeStampClass now greaseString