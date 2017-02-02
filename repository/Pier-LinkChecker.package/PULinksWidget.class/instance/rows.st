accessing
rows
	| links |
	links := OrderedCollection new: 1024.
	(self context enumeratorFor: self context root) everything do: [ :structure |
		structure outgoingReferences
			continue: [ :link | false ];
			do: [ :each | 
				each owner isNil 
					ifFalse: [ links addLast: each ] ] ].
	^ links