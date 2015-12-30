private
expandFrom: aReadStream with: anObject
	^ String streamContents: [ :writeStream |
		[ aReadStream atEnd ] whileFalse: [
			writeStream nextPutAll: (aReadStream upTo: self character).
			aReadStream atEnd 
				ifFalse: [ self expandFrom: aReadStream with: anObject on: writeStream ] ] ]