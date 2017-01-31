accessing
blog
	^ blog ifNil: [ blog := self find: PBBlog ]