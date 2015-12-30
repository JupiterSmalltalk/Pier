tests
testBroken
	self assert: self instance isBroken.
	
	self instance reference: 'value:does-not-exist'.
	self assert: self instance isBroken.
	
	self instance reference: 'value:STRUCTURE'.
	self deny: self instance isBroken.
	
	self instance reference: 'value:structure'.
	self deny: self instance isBroken.
	
	self instance reference: 'value:  structure'.
	self deny: self instance isBroken.
	
	self instance reference: 'value:structure  '.
	self deny: self instance isBroken