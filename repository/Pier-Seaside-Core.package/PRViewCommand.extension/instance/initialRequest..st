*pier-seaside-core-protected
initialRequest: aRequest
	| viewClass |
	super initialRequest: aRequest.
	viewClass := PRPierFrame
		classFromRequest: aRequest
		name: 'view'
		base: PRViewComponent.
	(viewClass notNil and: [ viewClass isValidIn: self context ])
		ifTrue: [ self viewComponentClass: viewClass ].
	self viewComponent visiblePresentersDo: [ :each | each initialRequest: aRequest ].
	(self viewComponent isFullResponse)
		ifTrue: [ self viewComponent handle: WACurrentRequestContext value ]