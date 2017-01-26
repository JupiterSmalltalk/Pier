actions
activate: aClass
	self kernel persistency class = aClass
		ifFalse: [ self kernel persistency: aClass new ]