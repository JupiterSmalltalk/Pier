tests-search
testSearchMultipleSubstrings
	| match |
	root contents: 'struct 1 parent'.
	folder contents: 'struct 2 folder'.
	child1 contents: 'struct 3 folder''s first child'.
	child2 contents: 'struct 4 folder''s second child'.
	match := root fullTextSearch subString: 'folder'.
	match subString: 'child'.
	self assert: (match collect: [ :each | each name ]) = #('child1' 'child2').
	match := root fullTextSearch subString: 'struct'.
	match subString: 'not-found'.
	self assert: match size = 0