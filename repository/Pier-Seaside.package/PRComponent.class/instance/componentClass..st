accessing
componentClass: aComponentClass
	self prototypeInstance class = aComponentClass ifTrue: [ ^ self ].
	self flush.
	
	self prototypeInstance: aComponentClass new.