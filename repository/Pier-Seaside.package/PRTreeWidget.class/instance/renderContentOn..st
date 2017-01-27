rendering
renderContentOn: html
	| root |
	root := self context root.
	self level notNil ifTrue: [
		root := self context structure parents
			at: self level
			ifAbsent: [ ^ self ] ].
	self displayRoot
		ifFalse: [ self renderStructureChildren: root on: html ]
		ifTrue: [ html unorderedList: [ self renderStructure: root on: html ] ]