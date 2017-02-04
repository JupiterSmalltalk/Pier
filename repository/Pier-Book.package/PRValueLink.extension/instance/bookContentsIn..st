*pier-book
bookContentsIn: aContext
	<value: 'book.contents' comment: 'Display a table of contents.'>

	| result |
	^ self lookupStructure: aContext structure do: [ :root |
		result := OrderedCollection new.
		root enumerator everything do: [ :structure |
			(structure isPublication and: [ structure isBook not and: [ structure isParagraph not ] ]) ifTrue: [
				(result isEmpty or: [ structure isPart ])
					ifTrue: [ result add: PRDefinitionList new ].
				self 
					bookLabel: (structure number 
						ifNil: [ ' ' ])
					class: nil
					target: structure 
					to: result last ] ].
		result ]