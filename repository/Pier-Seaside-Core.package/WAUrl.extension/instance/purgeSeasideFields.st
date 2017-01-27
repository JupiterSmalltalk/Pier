*pier-seaside-core-mapping
purgeSeasideFields
	self queryFields keys do: [ :each |
		(self isSeasideField: each)
			ifTrue: [ self queryFields removeKey: each ifAbsent: [ ] ] ]