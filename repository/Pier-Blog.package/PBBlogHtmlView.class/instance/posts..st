accessing
posts: aCollection
	"Display aCollection of posts in the receiver, presumeably this is a subset of the currently available posts."
	
	posts := aCollection asSortedCollection: [ :a :b | a publication > b publication ].
	batcher := nil