actions
lookup: aStructure
	^ Association 
		key: (super lookup: aStructure)
		value: self pathElement