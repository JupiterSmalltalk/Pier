options
json
	^ self options at: 'json_data' ifAbsentPut: [ GRSmallDictionary new ]