*pier-book
bookFiguresIn: aContext
	<value: 'book.figures' comment: 'Display a table of figures.'>

	| result |
	^ self lookupStructure: aContext structure do: [ :root |
		result := OrderedCollection new.
		root enumerator everything do: [ :structure |
			(result isEmpty or: [ structure isPublication and: [ structure isPart ] ])
				ifTrue: [ result add: PRDefinitionList new ].
			(structure isFigure and: [ structure isNumberedTitle ]) ifTrue: [
				result last
					add: (PRTermItem with: (PRText content: structure number));
					add: (PRDataItem with: (PRInternalLink new
						add: (PRText content: structure title);
						anchor: (structure name 
							select: [ :each | each isAlphaNumeric ]);
						target: structure parent;
						yourself)) ] ].
		result ]