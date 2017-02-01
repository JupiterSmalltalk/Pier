testing
magritteDescription
	^ self context user magritteDescription
		select: [ :each | each hasProperty: #public ]