*pier-admin
editingEnvironment
	"Answer the (inherited) environment structure of the receiver, if none is available a default one is created."

	^ self localEditingEnvironment ifNil: [
		self isRoot
			ifTrue: [ 
				self localEditingEnvironment: self class emptyEnvironment. 
				self localEditingEnvironment ]
			ifFalse: [ self parent editingEnvironment ] ]