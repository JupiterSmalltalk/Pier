tests-enumerator
testEnumerator
	self enumerator: self root enumerator gives: #( 'folder' ).
	self enumerator: self root enumerator with gives: #( 'root' 'folder' ).
	self enumerator: self root enumerator all gives: #( 'folder' 'child' 'structure' ).
	self enumerator: self root enumerator with all gives: #( 'root' 'folder' 'child' 'structure' ).
	self enumerator: self root enumerator everything gives: #( 'root' 'folder' 'child' 'structure' )