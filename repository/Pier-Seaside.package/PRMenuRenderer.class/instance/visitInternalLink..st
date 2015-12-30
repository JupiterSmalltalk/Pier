visiting-links
visitInternalLink: aLink
	| link |
	link := aLink copy.
	link target = target ifTrue: [
		link
			parameterAt: 'class'
			put: (aLink
				parameterAt: 'class'
				ifAbsent: [ String new ]) , ' active' ].
	super visitInternalLink: link