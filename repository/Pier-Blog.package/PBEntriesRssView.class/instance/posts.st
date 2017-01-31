accessing
posts
	^ posts ifNil: [ posts := self findPosts ]