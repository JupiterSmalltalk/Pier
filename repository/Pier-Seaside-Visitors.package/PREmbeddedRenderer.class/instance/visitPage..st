visiting-structure
visitPage: aPage
	(link hasParameter: 'menu')
		ifTrue: [ self visitPageMenu: aPage ]
		ifFalse: [ super visitPage: aPage ]