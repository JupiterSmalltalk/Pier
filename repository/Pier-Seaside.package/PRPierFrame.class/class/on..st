instance creation
on: aContext
	"This contructor creates a new SmallWiki frame that can be used within any Seaside application. It doesn't require a special session class, since all the required state is hold in the context of the wiki itself."

	^ self new
		context: aContext;
		yourself