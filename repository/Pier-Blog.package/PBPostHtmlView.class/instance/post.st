accessing
post
	^ post ifNil: [ post := self find: PBPost ]