*pier-book
bookIndexIn: aContext
	<value: 'book.index' comment: 'Display an index of keywords.'>

	| structs |
	^ self lookupStructure: aContext structure do: [ :root |
		| index |
		index := BOIndexBuilder new start: root.
		(index keys asSortedCollection: [ :a :b | a asLowercase < b asLowercase ])
			inject: PRDefinitionList new
			into: [ :list :word |
				structs := Set new.
				list add: (PRTermItem with: (PRText content: word)).
				(index at: word) do: [ :struct |
					(structs includes: struct) ifFalse: [ 
						structs add: struct.
						list add: (PRDataItem with: (PRInternalLink new
							anchor: word;
							target: struct;
							yourself)) ] ].
				list ] ]