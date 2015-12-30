*pier-seaside-accessing
viewComponentClass
	^ self propertyAt: #viewComponentClass ifAbsentPut: [ self defaultViewComponentClass ]