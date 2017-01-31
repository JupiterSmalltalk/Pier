private
findBlog
	^ self context structure findAncestor: [ :each | each isBlog ]