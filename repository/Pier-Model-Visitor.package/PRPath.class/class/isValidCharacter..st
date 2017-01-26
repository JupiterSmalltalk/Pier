testing
isValidCharacter: aCharacter
	^ aCharacter isAlphaNumeric or: [ '-._' includes: aCharacter ]