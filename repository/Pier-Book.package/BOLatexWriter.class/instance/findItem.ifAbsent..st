queries
findItem: aBlock ifAbsent: anAbsentBlock
	items size to: 1 by: -1 do: [ :index |
		(aBlock value: (items at: index))
			ifTrue: [ ^ items at: index ] ].
	^ anAbsentBlock value