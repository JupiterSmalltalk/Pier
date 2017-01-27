*pier-seaside-private
buildComponent: aStructure for: aLink
	^ (aStructure componentFor: aLink)
		onChangeContext: self;
		yourself