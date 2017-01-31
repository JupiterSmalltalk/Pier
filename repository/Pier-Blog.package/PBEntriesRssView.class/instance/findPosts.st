private
findPosts
	| items |
	items := self blog allPostsIn: self context.
	tags isEmptyOrNil
		ifFalse: [ items := items select: [ :post | post tags anySatisfy: [ :each | tags includes: each ] ] ].
	items := items last: (self blog itemCount min: items size).
	^ items reversed