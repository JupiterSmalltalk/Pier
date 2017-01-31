actions
filter: aCollection
	| newContext |
	newContext := self context structure: self blog.
	newContext command viewComponent posts: aCollection.
	self context: newContext