options
core
	^ self options at: 'core' ifAbsentPut: [ GRSmallDictionary new ]