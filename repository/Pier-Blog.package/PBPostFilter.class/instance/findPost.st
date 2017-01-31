private
findPost
	^ self context structure findAncestor: [ :each | each isPost ]