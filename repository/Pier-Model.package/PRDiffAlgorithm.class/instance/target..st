accessing
target: aCollection
	"Set the target sequence."

	target := aCollection asArray.
	targetText := Array new: target size.
	targetRow := Array new: target size.
	targetMap := Dictionary new.
	target keysAndValuesDo: [ :index :each | 
		(targetMap at: each ifAbsentPut: [ OrderedCollection new ])
			addLast: index ]