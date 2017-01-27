actions
addSearchString: aString to: aSearcher
	aString isEmpty
		ifTrue: [ ^ self ].
	aString first = $+
		ifTrue: [ aSearcher acceptToken: aString allButFirst ]
		ifFalse: [ 
			aString first = $-
				ifTrue: [ aSearcher rejectToken: aString allButFirst ]
				ifFalse: [ aSearcher acceptToken: aString ] ]