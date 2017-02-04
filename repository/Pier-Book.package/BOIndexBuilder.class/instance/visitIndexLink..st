visiting-document
visitIndexLink: aLink
	(index at: aLink entries first ifAbsentPut: [ OrderedCollection new ])
		addLast: aLink owner