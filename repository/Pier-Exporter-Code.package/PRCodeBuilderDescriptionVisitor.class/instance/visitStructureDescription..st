visiting
visitStructureDescription: aDescription
	| subStructure |
	subStructure := aDescription accessor read: structure.
	aDescription asCodeFor: structure value: ' (self ', subStructure asSelector, ': aKernel)' exporter: exporter on: stream.
	stream nextPut: Character cr.
	
	self methods addAll: (exporter writeCodeFor: subStructure)