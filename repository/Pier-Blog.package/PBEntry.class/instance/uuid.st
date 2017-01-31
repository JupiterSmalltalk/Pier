accessing
uuid
	^ uuid ifNil: [ uuid := SmallInteger maxVal atRandom greaseString ]