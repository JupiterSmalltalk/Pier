*pier-seaside-core-mapping
purgeOtherFields
	self queryFields keys do: [ :each |
		(self isSeasideField: each)
			ifFalse: [ self queryFields removeKey: each ifAbsent: [ ] ] ]