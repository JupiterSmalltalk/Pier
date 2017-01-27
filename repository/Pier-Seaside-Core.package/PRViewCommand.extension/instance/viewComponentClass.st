*pier-seaside-core-accessing
viewComponentClass
	^ self propertyAt: #viewComponentClass ifAbsentPut: [ self defaultViewComponentClass ]