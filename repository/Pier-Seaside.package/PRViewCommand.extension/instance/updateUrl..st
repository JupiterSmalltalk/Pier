*pier-seaside-protected
updateUrl: anUrl 
	super updateUrl: anUrl.
	self viewComponentClass = self defaultViewComponentClass 
		ifFalse: [ anUrl queryFields at: 'view' put: self viewComponentClass name greaseString ].
	self properties 
		at: #viewComponent
		ifPresent: [ :component | component updateUrl: anUrl ]