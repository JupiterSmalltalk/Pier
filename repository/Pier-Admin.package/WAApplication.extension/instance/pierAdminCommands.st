*pier-admin
pierAdminCommands
	^ (self preferenceAt: #pierAdminCommands) collect: [ :each | 
		each isSymbol 
			ifTrue: [ self class environment at: each ] 
			ifFalse: [ each ] ]