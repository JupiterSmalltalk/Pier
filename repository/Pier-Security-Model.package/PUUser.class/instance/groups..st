accessing-readonly
groups: aCollection
	self groups do: [ :each | each users remove: self ifAbsent: [ ] ].
	aCollection do: [ :each | each users add: self ].
	groups := aCollection asOrderedCollection