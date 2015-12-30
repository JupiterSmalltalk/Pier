accessing
source: aCollection
	"Set the source sequence."

	source := aCollection asArray.
	sourceText := Array new: source size.
	sourceRow := Array new: source size.
	sourceMap := Dictionary new.
	source keysAndValuesDo: [ :index :each |
		(sourceMap at: each ifAbsentPut: [ OrderedCollection new ])
			addLast: index ]