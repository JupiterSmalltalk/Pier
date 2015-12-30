tests-outgoing
testOutgoingReferencesStandard
	| matched |
	root contents: '*folder*'.
	folder contents: '*child1* *child2*'.
	child1 contents: '*/*'.
	child2 contents: ''.

	matched := root outgoingReferences collect: [ :each | each target ].
	self assert: (matched collect: [ :each | each name ]) = #( 'folder' ).
	matched := folder outgoingReferences collect: [ :each | each target ].
	self assert: (matched collect: [ :each | each name ]) = #( 'child1' 'child2' ).
	matched := child1 outgoingReferences collect: [ :each | each target ].
	self assert: (matched collect: [ :each | each name ]) = #( 'root' ).
	matched := child2 outgoingReferences collect: [ :each | each target ].
	self assert: (matched collect: [ :each | each name ]) = #( )