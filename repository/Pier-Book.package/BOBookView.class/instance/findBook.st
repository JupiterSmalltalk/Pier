private
findBook
	^ self context structure findAncestor: [ :each | each isPublication and: [ each isBook ] ]