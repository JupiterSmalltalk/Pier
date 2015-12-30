tests-utilities
testFormatStructure
	| structure context document |
	structure := PRPage named: 'foo'.
	context := PRContext kernel: PRKernel basicNew structure: structure.

	self instance reference: 'value:structure'.
	document := self instance formatStructure: structure in: context.
	self assert: document text = 'Foo'.

	self instance parameterAt: 'display' put: 'name'.
	document := self instance formatStructure: structure in: context.
	self assert: document text = 'foo'.
	
	self instance parameterAt: 'display' put: '{name}'.
	document := self instance formatStructure: structure in: context.
	self assert: document text = 'foo'.
	
	self instance parameterAt: 'display' put: '{name} and {title}'.
	document := self instance formatStructure: structure in: context.
	self assert: document text = 'foo and Foo'.

	self instance parameterAt: 'link' put: nil.
	document := self instance formatStructure: structure in: context.
	self assert: document target = structure.
	self assert: document children first text = 'foo and Foo'