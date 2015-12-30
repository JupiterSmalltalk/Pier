tests
testInitialState
	self deny: self kernel name isNil.
	self deny: self kernel root isNil.
	self deny: self kernel persistency isNil