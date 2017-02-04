*pier-book
bookNavigationIn: aContext
	<value: 'book.navigation' comment: 'Display a navigation structure for books.'>

	^ self lookupStructure: aContext structure do: [ :structure |
		| root structures index result |
		root := structure
			findAncestor: [ :each | each isPublication and: [ each isBook ] ]
			ifAbsent: [ ^ nil ].
		structures := (aContext enumeratorFor: root) everything
			select: [ :each | each isPublication ].
		index := structures indexOf: (structure
			findAncestor: [ :each | each isPublication ])
			ifAbsent: [ ^ nil ].
		result := PRDefinitionList new.
		self
			bookLabel: '&rarr;' class: 'navigation-next' target: (structures at: index + 1 ifAbsent: [ nil ]) to: result;
			bookLabel: '&larr;' class: 'navigation-prev' target: (structures at: index - 1 ifAbsent: [ nil ]) to: result ]