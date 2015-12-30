testing
isValidName: aString
	^ aString isNil not
		and: [ aString isEmpty not
		and: [ aString ~= self parentStructure
		and: [ aString ~= self currentStructure
		and: [ aString allSatisfy: [ :char | self isValidCharacter: char ] ] ] ] ]