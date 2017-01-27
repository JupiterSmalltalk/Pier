updating
updateUrl: anUrl 
	super updateUrl: anUrl.
	self hasValidQuery 
		ifTrue: [ anUrl queryFields at: self queryFieldName put: self query ]