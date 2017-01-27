*pier-seaside
isEmpty
	self flag: #todo. "Remove this method - used by PRDocumentWriter>>start:"
	^ stream isEmpty