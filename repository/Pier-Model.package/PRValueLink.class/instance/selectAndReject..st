private
selectAndReject: anObject
	self parameters at: 'select' ifPresent: [ :tokens |
		(tokens includesSubstring: anObject class label caseSensitive: true)
			ifFalse: [ ^ nil ] ].
	self parameters at: 'reject' ifPresent: [ :tokens |
		(tokens includesSubstring: anObject class label caseSensitive: true)
			ifTrue: [ ^ nil ] ].
	^ anObject