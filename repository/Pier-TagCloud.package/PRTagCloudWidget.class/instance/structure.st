accessing
structure
	"Answer the structure where the search for the tag cloud should start from."
	
	^ self startAt ifNil: [ self startAt: self context root. self startAt ]