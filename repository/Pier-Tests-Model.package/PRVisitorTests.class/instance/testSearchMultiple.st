tests-search
testSearchMultiple
	| match |
	root contents: 'struct 1 foo'.
	folder contents: 'struct 2 bar'.
	child1 contents: 'struct 3 zork'.
	child2 contents: 'struct 4 plonk'.

	match := root fullTextSearch subString: '1'.
	self assert: (match collect: [ :each | each name ]) = #( 'root' 'child1' ).
	match := root fullTextSearch subString: '2'.
	self assert: (match collect: [ :each | each name ]) = #( 'folder' 'child2' )