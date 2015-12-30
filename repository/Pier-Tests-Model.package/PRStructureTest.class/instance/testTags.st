tests-accessing
testTags
	self assert: self structure tags isEmpty.
	self structure tags: #( 'foo' 'bar' ).
	self assert: (self structure tags includes: 'foo').
	self assert: (self structure tags includes: 'bar')