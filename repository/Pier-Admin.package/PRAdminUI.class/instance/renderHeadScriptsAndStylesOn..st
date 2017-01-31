rendering
renderHeadScriptsAndStylesOn: script
	| anHtmlRoot |
	"if we're displaying preview the iframe contains a complete document including head scripts and styles"
	self isShowingPreview ifTrue: [ ^ self ].
	
	anHtmlRoot := PRAdminHtmlRoot context:  script renderContext.
	
	(WAVisiblePresenterGuide client:
		(WAUpdateRootVisitor root: anHtmlRoot))
		start: self pierComponent.
		
	self addHeadScriptsAndStyles: anHtmlRoot on: script