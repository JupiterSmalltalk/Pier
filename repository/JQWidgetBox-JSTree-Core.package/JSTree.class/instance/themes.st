options
themes
	^ self options at: 'themes' ifAbsentPut: [ GRSmallDictionary new ]