testing
isCommentEnabled
	^ self post publication notNil and: [ self post publication + self blog commentTimeout >= GRPlatform current magritteTimeStampClass now ]