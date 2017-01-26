accessing
items
	| items |
	items := self unfilteredItems asArray
		reject: [ :each | self isFiltered: each ].
	self maxItems isNil
		ifFalse: [ items := items first: (items size min: self maxItems) ].
	^ items