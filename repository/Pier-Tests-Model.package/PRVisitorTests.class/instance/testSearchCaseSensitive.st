tests-search
testSearchCaseSensitive
	| match |
	root contents: 'struct 1 foo'.
	folder contents: 'struct 2 bar'.
	child1 contents: 'struct 3 zork'.
	child2 contents: 'struct 4 plonk'.

	match := root fullTextSearch subString: 'Bar'; caseSensitive: true.
	self assert: (match collect: [ :each | each name ]) = #( ).
	match := root fullTextSearch subString: 'bar'; caseSensitive: true.
	self assert: (match collect: [ :each | each name ]) = #( 'folder' ).

	match := root fullTextSearch subString: 'Bar'; caseSensitive: false.
	self assert: (match collect: [ :each | each name ]) = #( 'folder' ).
	match := root fullTextSearch subString: 'bar'; caseSensitive: false.
	self assert: (match collect: [ :each | each name ]) = #( 'folder' ).

	match := root fullTextSearch subString: 'Bar'.
	self assert: (match collect: [ :each | each name ]) = #( 'folder' ).
	match := root fullTextSearch subString: 'bar'.
	self assert: (match collect: [ :each | each name ]) = #( 'folder' )