private
buildDescription
	^ self command magritteDescription select: [ :each |
		each propertyAt: #public ifAbsent: [ false ] ]