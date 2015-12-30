actions
suggestName: aString
	"Suggest aString as the name and title of the newly created structure."

	self name: (aString collect: [ :char |
		(PRPath isValidCharacter: char)
			ifTrue: [ char asLowercase ]
			ifFalse: [
				Character space = char
					ifTrue: [ $- ]
					ifFalse: [ $_ ] ] ]).
	self title: aString capitalized