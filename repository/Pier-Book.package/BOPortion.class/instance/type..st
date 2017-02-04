accessing
type: aSymbol
	"Update the type of the receiver if necessary. Also update the children."
	
	(self type = aSymbol)
		ifTrue: [ ^ self ].
	(self class typeSymbols includes: aSymbol)
		ifFalse: [ self error: 'Invalid type: ' , aSymbol printString ].
	type := aSymbol.
	self enumerator
		do: [ :each | each parent: self ]