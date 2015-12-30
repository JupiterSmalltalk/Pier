*pier-model
owner: anObject
	super owner: anObject.
	self children do: [ :each | each owner: anObject ]