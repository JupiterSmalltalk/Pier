accessing-dynamic
posts
	| items |
	items := self blog allPostsIn: self context.
	self numberOfPosts isNil
		ifFalse: [ items := items last: (self numberOfPosts min: items size) ].
	^ items reversed