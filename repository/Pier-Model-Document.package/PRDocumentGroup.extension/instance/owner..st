*pier-model-document
owner: anObject
	super owner: anObject.
	self children do: [ :each | each owner: anObject ]