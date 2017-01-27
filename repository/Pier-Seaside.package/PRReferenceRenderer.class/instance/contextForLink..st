querying
contextForLink: aLink
	| context |
	context := self context structure: aLink target.
	context := self contextForCommandIn: context link: aLink.
	self configureCommandIn: context link: aLink.
	context := self contextForViewIn: context link: aLink.
	self configureViewIn: context link: aLink.
	^ context