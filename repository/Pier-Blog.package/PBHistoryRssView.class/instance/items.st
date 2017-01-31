accessing
items
	^ items ifNil: [ items := self buildItems ]