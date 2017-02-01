private
tokenize: anObject using: aDescription
	| string tokens ignoredTokens |
	(aDescription accessor canRead: anObject)
		ifFalse: [ ^ #() ].
	string := aDescription toString: (anObject readUsing: aDescription).
	string := string collect: [ :each | 
		each isLetter
			ifTrue: [ each asLowercase ]
			ifFalse: [ 
				each = $-
					ifTrue: [ each ]
					ifFalse: [ $  ] ] ].
	tokens := string findTokens: ' '.
	ignoredTokens := self ignoredTags findTokens: ' '.
	^ tokens reject: [ :each | each size = 1 or: [ (StopWords includes: each) or: [ignoredTokens includes: each] ] ]