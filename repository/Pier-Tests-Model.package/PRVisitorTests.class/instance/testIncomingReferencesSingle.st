tests-incoming
testIncomingReferencesSingle
	| matched |
	root contents: '*folder*'.
	folder contents: '*child1* *child2*'.
	child1 contents: '*/*'.
	child2 contents: ''.

	matched := root incomingReferences
		to: root;
		collect: [ :each | each owner ].
	self assert: (matched collect: [ :each | each name ]) = #( 'child1' ).
	matched := root incomingReferences
		to: folder;
		collect: [ :each | each owner ].
	self assert: (matched collect: [ :each | each name ]) = #( 'root' ).
	matched := root incomingReferences
		to: child1;
		collect: [ :each | each owner ].
	self assert: (matched collect: [ :each | each name ]) = #( 'folder' ).
	matched := root incomingReferences
		to: child2;
		collect: [ :each | each owner ].
	self assert: (matched collect: [ :each | each name ]) = #( 'folder' )