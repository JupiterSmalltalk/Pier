tests
testLinkInside
	| inner |
	inner := PRPage named: 'child'.
	self command structure addChild: inner.
	inner contents: '*/command/child*'.
	self command structure contents: '*child*'.
	self command target: self command root.
	self command execute.
	self assert: self command structure contents =  '*child*'.
	self assert: inner contents = '*/command/child*'.
	self assert: (self command root lookupPath: self command name) contents =  '*child*'.
	self assert: (self command root lookupPath: self command name , '/child') contents = ('*/' ,  self command name , '/child*')