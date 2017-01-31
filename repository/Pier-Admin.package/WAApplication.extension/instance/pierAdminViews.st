*pier-admin
pierAdminViews
	| adminViews |
	adminViews := OrderedCollection withAll: (self preferenceAt: #pierAdminViews).
	adminViews addFirst: #PRDefaultView.
	
	^ adminViews collect: [ :each | 
		each isSymbol 
			ifTrue: [ self class environment at: each ] 
			ifFalse: [ each ] ]