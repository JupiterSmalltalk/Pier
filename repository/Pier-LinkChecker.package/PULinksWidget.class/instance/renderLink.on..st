rendering
renderLink: aLink on: html
	| document |
	(aLink isKindOf: PRValueLink)
		ifTrue: [ document := PRText content: aLink text ]
		ifFalse: [
			document := aLink copy.
			document setChildren: #(); parameters: #(); embedded: false.
			document add: (PRText content: aLink reference).
			document propertyAt: 'title' put: aLink text ].
	html rendererInstance
		continue: document
		in: self report on: html