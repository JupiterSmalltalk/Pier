*pier-seaside-accessing
session
	"Answer the cached seaside session, this is a short-cut to avoid to unnecessary lookups."

	^ self propertyAt: #session ifAbsentPut: [
		(self requestContextIfNilDo: [ ^ nil ]) session ]