acessing-magritte
magritteDescription
	"Direct descendents of a book can be a part or a chapter, that's why we needs an additional setting."

	^ (self parent isNil or: [ self parent isBook not ])
		ifTrue: [ super magritteDescription ]
		ifFalse: [ 
			super magritteDescription copy
				add: self descriptionType;
				yourself ]