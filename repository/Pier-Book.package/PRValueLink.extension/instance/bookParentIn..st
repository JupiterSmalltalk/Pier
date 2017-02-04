*pier-book
bookParentIn: aContext
	<value: 'book.parent' comment: 'Display the parent structure for books.'>

	^ self lookupStructure: aContext structure do: [ :structure |
		self
			bookLabel: '&sect;'
			class: 'navigation-parent'
			target: (structure parent isNil 
				ifFalse: [ structure parent findAncestor: [ :each | each isPublication ] ]) 
			to: PRDefinitionList new ]