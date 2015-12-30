accessing
kernel
	^ kernel ifNil: [ kernel := self kernelInstance ]