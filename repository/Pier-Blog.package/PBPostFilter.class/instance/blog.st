accessing
blog
	"Answer the currently browsed blog or nil."
	
	^ blog ifNil: [ blog := self findBlog ]