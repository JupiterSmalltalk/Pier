tests-search
testSearchTitle
	| match |
	root contents: 'struct 1 foo'.
	folder contents: 'struct 2 bar'.
	child1 contents: 'struct 3 zork'.
	child2 contents: 'struct 4 plonk'.

	match := root fullTextSearch subString: 'root'.
	self assert: (match collect: [ :each | each name ]) = #( 'root' ).
	match := root fullTextSearch subString: 'folder'.
	self assert: (match collect: [ :each | each name ]) = #( 'folder' ).
	match := root fullTextSearch subString: 'child1'.
	self assert: (match collect: [ :each | each name ]) = #( 'child1' ).
	match := root fullTextSearch subString: 'child2'.
	self assert: (match collect: [ :each | each name ]) = #( 'child2' )