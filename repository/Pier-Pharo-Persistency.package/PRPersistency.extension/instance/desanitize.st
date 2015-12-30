*pier-pharo-persistency
desanitize
	"Sanitizes the receiver to be serializeable."
	
	mutex := self defaultMutex