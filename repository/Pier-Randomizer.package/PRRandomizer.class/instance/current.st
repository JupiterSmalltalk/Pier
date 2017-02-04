accessing
current
	"Answer the current structure to display."

	(current isNil or: [ (self keep) not ]) ifTrue: [
		current := self candidates isEmpty
			ifFalse: [ self candidates atRandom ]
			ifTrue: [ NoChildrenFound ] ].
	^ current