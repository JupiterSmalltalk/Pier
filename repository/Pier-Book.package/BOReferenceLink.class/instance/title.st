accessing
title
	^ (self target notNil and: [ self target isFigure or: [ self target isPublication and: [ self target isBook not ] ] ])
		ifTrue: [ self target refLabel ]
		ifFalse: [ super title ]