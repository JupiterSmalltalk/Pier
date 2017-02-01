accessing
tagsByName
	"Answer the tags alphabetically sorted by name."
	
	tagsByName isNil
		ifFalse: [ ^ tagsByName ].
	^ tagsByName := self tagsByCount 
		asSortedCollection: [ :a :b | a key < b key ]