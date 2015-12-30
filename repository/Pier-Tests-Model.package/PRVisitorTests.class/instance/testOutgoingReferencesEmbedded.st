tests-outgoing
testOutgoingReferencesEmbedded
	| matched |
	root contents: '+folder+'.
	folder contents: '+child1+ +child2+'.
	child1 contents: '+/+'.
	child2 contents: ''.

	matched := root outgoingReferences collect: [ :each | each target ].
	self assert: (matched collect: [ :each | each name ]) = #( 'folder' 'child1' 'root' 'child2' ).
	matched := folder outgoingReferences collect: [ :each | each target ].
	self assert: (matched collect: [ :each | each name ]) = #( 'child1' 'root' 'folder' 'child2' ).
	matched := child1 outgoingReferences collect: [ :each | each target ].
	self assert: (matched collect: [ :each | each name ]) = #( 'root' 'folder' 'child1' 'child2' ).
	matched := child2 outgoingReferences collect: [ :each | each target ].
	self assert: (matched collect: [ :each | each name ]) = #( )