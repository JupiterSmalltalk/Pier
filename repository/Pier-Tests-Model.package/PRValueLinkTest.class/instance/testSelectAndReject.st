tests-utilities
testSelectAndReject
	| structure1 structure2 structure3 |
	structure1 := PRPage named: '1'.
	structure2 := PRPage named: '2'.
	structure3 := PRPage named: '3'.

	structure1 addChild: structure2.
	structure2 addChild: structure3.
	
	self instance reference: 'value:structure'.
	self instance parameterAt: 'lower' put: '2'.

	self instance parameterAt: 'level' put: '-3'.
	self assert: (self instance lookupStructure: structure3 do: [ :structure | structure ]) isNil.
	
	self instance parameterAt: 'level' put: '-2'.
	self assert: (self instance lookupStructure: structure3 do: [ :structure | structure ]) isNil.
	
	self instance parameterAt: 'level' put: '-1'.
	self assert: (self instance lookupStructure: structure3 do: [ :structure | structure ]) = structure2.
	
	self instance parameterAt: 'level' put: '0'.
	self assert: (self instance lookupStructure: structure3 do: [ :structure | structure ]) = structure3.
	
	self instance parameterAt: 'level' put: '1'.
	self assert: (self instance lookupStructure: structure3 do: [ :structure | structure ]) isNil.
	
	self instance parameterAt: 'level' put: '2'.
	self assert: (self instance lookupStructure: structure3 do: [ :structure | structure ]) = structure2.
	
	self instance parameterAt: 'level' put: '3'.
	self assert: (self instance lookupStructure: structure3 do: [ :structure | structure ]) = structure3.
	
	self instance parameterAt: 'level' put: '4'.
	self assert: (self instance lookupStructure: structure3 do: [ :structure | structure ]) isNil