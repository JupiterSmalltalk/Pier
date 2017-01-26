private
hasCommonPath
	"Answer true if the source and target path start with the same structure."
	
	 ^ self sourcePath notEmpty
		and: [ self targetPath notEmpty
		and: [ self sourcePath first = self targetPath first ] ]