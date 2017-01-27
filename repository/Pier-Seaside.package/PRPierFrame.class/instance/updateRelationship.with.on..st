updating-extras
updateRelationship: aString with: aStructure on: aHtmlRoot
	| target renderer |
	(aStructure isNil or: [ aStructure = self structure])
		ifTrue: [ ^ self ].
	target := self context structure: aStructure.
	target isValid ifFalse: [ ^ self ].
	renderer := self rendererForRoot: aHtmlRoot.
	aHtmlRoot link
		relationship: aString; 
		url: (target urlOn: renderer)