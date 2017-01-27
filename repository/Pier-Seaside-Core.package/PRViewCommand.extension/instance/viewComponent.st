*pier-seaside-core-accessing
viewComponent
	^ self propertyAt: #viewComponent ifAbsentPut: [ self viewComponentClass on: self context ]