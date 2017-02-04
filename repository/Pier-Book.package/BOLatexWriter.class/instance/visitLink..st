visiting-document
visitLink: aLink
	aLink hasChildren
		ifTrue: [ super visitLink: aLink ]
		ifFalse: [ latex print: aLink reference ]