tests-incoming
testIncomingReferencesMultiple
	| matched |
	root contents: '*folder*'.
	folder contents: '*child1* *child2*'.
	child1 contents: '*/*'.
	child2 contents: ''.

	matched := root incomingReferences
		toAll: (Array with: root with: folder);
		collect: [ :each | each owner ].
	self assert: (matched collect: [ :each | each name ]) = #( 'root' 'child1' ).
	matched := folder incomingReferences
		toAll: (Array with: root with: folder);
		collect: [ :each | each owner ].
	self assert: (matched collect: [ :each | each name ]) = #( 'child1' ).
	matched := folder incomingReferences
		toAll: (Array with: child1 with: child2);
		collect: [ :each | each owner ].
	self assert: (matched collect: [ :each | each name ]) = #( 'folder' 'folder' )