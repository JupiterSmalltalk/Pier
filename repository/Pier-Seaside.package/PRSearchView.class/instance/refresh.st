actions
refresh
	| searcher quotedString stringTokens |
	items := OrderedCollection new.
	self hasValidQuery
		ifFalse: [ ^ self ].
	searcher := self context structure fullTextSearch.
	quotedString := ''.
	stringTokens := self query findTokens: Character space.
	stringTokens first = '^'
		ifTrue: [ 
			stringTokens removeFirst.
			searcher caseSensitive: true ]
		ifFalse: [ searcher caseSensitive: false ].
	stringTokens
		do: [ :token | 
			token isEmpty
				ifFalse: [ 
					quotedString isEmpty
						ifTrue: [ 
							token first = $'
								ifTrue: [ quotedString := token allButFirst ]
								ifFalse: [ self addSearchString: token to: searcher ] ]
						ifFalse: [ 
							token last = $'
								ifTrue: [ 
									self addSearchString: quotedString , ' ' , token allButLast to: searcher.
									quotedString := '' ]
								ifFalse: [ quotedString := quotedString , ' ' , token ] ] ] ].
	(quotedString findTokens: Character space) do: [ :token | self addSearchString: token to: searcher ].
	self items
		addAll:
			(searcher select: [ :structure | structure parents allSatisfy: [ :parent | (self context structure: parent) isValid ] ])