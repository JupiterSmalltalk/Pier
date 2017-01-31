actions
filter: aString
	| newContext component |
	newContext := self context structure: self blog.
	component := newContext command viewComponent.
	component posts: (component posts
		select: [ :each | each tags includes: aString ]).
	self context: newContext