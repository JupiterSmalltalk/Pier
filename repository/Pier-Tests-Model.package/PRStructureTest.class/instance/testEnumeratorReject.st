tests-enumerator
testEnumeratorReject
	self
		enumerator: (self root enumerator everything
			reject: [ :each | each = self structure ])
		gives: #( 'root' 'folder' 'child' )