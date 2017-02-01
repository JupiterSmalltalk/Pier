accessing-editing
text
	^ self specification 
		toString: (self context command fields 
			at: self specification
			ifAbsentPut: [ 
				self specification accessor
					read: self context structure ])