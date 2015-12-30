private
removeCommonPath
	"Remove all common path elements from the source and target path."
	
	[ self hasCommonPath ] whileTrue: [ 
		self sourcePath removeFirst.
		self targetPath removeFirst ]