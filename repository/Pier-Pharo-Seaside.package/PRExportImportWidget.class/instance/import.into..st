actions
import: aCollection into: aKernel
	| newKernel |
	newKernel := self exporterImporter import: aCollection into: aKernel.
	self context: (self context structure: newKernel root)