*pier-seaside-accessing
viewComponent
	^ self propertyAt: #viewComponent ifAbsentPut: [ self viewComponentClass on: self context ]