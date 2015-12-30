tests-search
testSearchNonRoot
	| match |
	root contents: 'struct 1 foo'.
	folder contents: 'struct 2 bar'.
	child1 contents: 'struct 3 zork'.
	child2 contents: 'struct 4 plonk'.

	match := root fullTextSearch subString: 'plonk'.
	self assert: (match collect: [ :each | each name ]) = #( 'child2'  ).
	match := folder fullTextSearch subString: 'plonk'.
	self assert: (match collect: [ :each | each name ]) = #( 'child2'  ).
	match := child1 fullTextSearch subString: 'plonk'.
	self assert: (match collect: [ :each | each name ]) = #(  ).
	match := child2 fullTextSearch subString: 'plonk'.
	self assert: (match collect: [ :each | each name ]) = #( 'child2' )