*pier-model-document
title
	^ self target isNil
		ifTrue: [ super title ]
		ifFalse: [ self target title ]