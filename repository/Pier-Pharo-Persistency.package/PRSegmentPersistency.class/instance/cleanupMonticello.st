cleanup
cleanupMonticello
	"Clear monticello caches, they might reference some of our blocks in obscure ways."
	<cleanup>
	
	MCMethodDefinition shutDown.
	MCFileBasedRepository flushAllCaches 