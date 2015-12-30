*pier-model
owner: anObject
	self propertyAt: 'owner' put: anObject.
	super owner: anObject.
	self update