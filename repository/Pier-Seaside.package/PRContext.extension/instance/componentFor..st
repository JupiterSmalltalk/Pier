*pier-seaside-caching
componentFor: aLink
	"Return the cached component of aLink, if none is existing yet create a new one."

	^ self componentDictionary at: aLink ifAbsentPut: [ self buildComponent: aLink target for: aLink ]