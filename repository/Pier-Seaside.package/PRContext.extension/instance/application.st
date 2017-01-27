*pier-seaside-accessing
application
	"Answer the cached seaside application, this is a short-cut to avoid to unnecessary lookups."

	^ self propertyAt: #application ifAbsentPut: [ 
		(self requestContextIfNilDo: [ ^ nil ]) application ]