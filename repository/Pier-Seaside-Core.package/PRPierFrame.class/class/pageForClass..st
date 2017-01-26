examples
pageForClass: aClass 
	| page |
	page := (PRPage named: aClass name)
		contents: (String streamContents: 
				[ :stream | 
				stream
					nextPutAll: '!Class definition';
					nextPut: Character cr.
				aClass definition linesDo: 
					[ :each | 
					(GRPlatform current magritteClassNamed: #SPHighlightedCode) isNil 
						ifTrue: [ stream nextPut: $= ]
						ifFalse: [ stream nextPutAll: '==' ].
					stream
						nextPutAll: each;
						nextPut: Character cr ].
				aClass hasComment ifTrue: 
					[ stream
						nextPutAll: '!Class comment';
						nextPut: Character cr.
					stream
						nextPutAll: aClass comment;
						nextPut: Character cr ].
				aClass selectorsAndMethodsDo: 
					[ :selector :method | 
					(aClass firstCommentAt: selector) ifNotEmptyDo: 
						[ :comment | 
						stream
							nextPutAll: '!!';
							nextPutAll: selector;
							nextPut: Character cr.
						stream
							nextPutAll: comment;
							nextPut: Character cr;
							nextPut: Character cr ] ] ]);
		yourself.
	aClass subclassesDo: [ :each | page addChild: (self pageForClass: each) ].
	^ page