accessing
unfilteredItems
	| items |
	items := self context structure parents.
	self allButLast ifTrue: [ items := items allButLast ].
	^ items