accessing
tags
	^ tags ifNil: [ tags := self findTags ]