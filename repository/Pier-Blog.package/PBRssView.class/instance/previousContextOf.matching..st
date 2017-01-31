private
previousContextOf: aContext matching: aBlock
	| current previous |
	current := self items
		indexOf: aContext
		ifAbsent: [ ^ nil ].
	current + 1 to: self items size do: [ :index |
		previous := self items at: index.
		(aBlock value: previous)
			ifTrue: [ ^ previous ] ].
	^ nil