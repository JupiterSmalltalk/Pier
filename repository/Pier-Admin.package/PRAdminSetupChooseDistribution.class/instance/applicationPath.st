accessing
applicationPath
	^ applicationPath ifNil: [ applicationPath :=  self suggestApplicationPathFrom: self kernelName ]