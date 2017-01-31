rendering
nodeSelectedCallbackFor: structure on: script
	self dontUpdateOnSelect ifTrue: [ 
		self dontUpdateOnSelect: false. 
		^ self ].
	
	(self isSameStructureSelected: structure) ifTrue: [	
		^ self ].
	
	self context: (self context structure: structure). 
	self announceAjaxUpdateWithoutSelfOn: script