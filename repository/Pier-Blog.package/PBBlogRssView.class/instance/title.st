accessing-dynamic
title
	^ self blog feedTitle ifNil: [ self blog title ]