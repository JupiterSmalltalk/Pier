options
ui
	^ self options at: 'ui' ifAbsentPut: [ GRSmallDictionary new ]