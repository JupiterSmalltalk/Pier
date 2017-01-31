accessing
author
	^ author ifNil: [ author := self findAuthor ]