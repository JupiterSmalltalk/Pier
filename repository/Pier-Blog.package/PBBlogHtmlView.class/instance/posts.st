accessing
posts
	"Answer a default collection of posts."
	
	^ posts ifNil: [ posts := super posts reversed ]