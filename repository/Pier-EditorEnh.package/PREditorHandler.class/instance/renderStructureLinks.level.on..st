rendering-parts
renderStructureLinks: aStructure level: anInteger on: html
	(self context structure: aStructure) isValid
		ifFalse: [ ^ self ].
	html option
		value: aStructure absolutePath;
		with: [ html space: 2 * anInteger; text: aStructure title ].
	(self context enumeratorFor: aStructure)
		do: [ :each | self renderStructureLinks: each level: anInteger + 1 on: html ]