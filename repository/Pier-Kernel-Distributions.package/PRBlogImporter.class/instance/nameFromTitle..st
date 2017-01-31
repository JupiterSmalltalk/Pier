helper
nameFromTitle: title
	| theTitle |
	theTitle := title collect: [ :char |
		(PRPath isValidCharacter: char)
			ifTrue: [ char asLowercase ]
			ifFalse: [
				Character space = char
					ifTrue: [ $- ]
					ifFalse: [ $_ ] ] ].
			
	^ theTitle reject: [ :each | each = $_ ]