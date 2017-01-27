*pier-seaside-caching
flushComponent: aStructure
	"Flush all the components that are instantiated from aStructure."
	
	self componentDictionary keys do: [ :each |
		each target = aStructure 
			ifTrue: [ self componentDictionary removeKey: each ifAbsent: [ ] ] ]