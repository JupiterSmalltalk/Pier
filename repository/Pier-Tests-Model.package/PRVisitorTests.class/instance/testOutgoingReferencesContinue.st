tests-outgoing
testOutgoingReferencesContinue
	| matched |
	root contents: '+folder+'.
	folder contents: '+child1+ +child2+'.
	child1 contents: '+/+'.
	child2 contents: ''.

	matched := root outgoingReferences
		continue: [ :each | false ];
		collect: [ :each | each target ].
	self assert: (matched collect: [ :each | each name ]) = #( 'folder' ).
	matched := root outgoingReferences
		continue: [ :each | each owner = root ];
		collect: [ :each | each target ].
	self assert: (matched collect: [ :each | each name ]) = #( 'folder' 'child1' 'child2' ).
	matched := root outgoingReferences
		continue: [ :each | each target ~= child1 ];
		collect: [ :each | each target ].
	self assert: (matched collect: [ :each | each name ]) = #( 'folder' 'child1' 'child2' )