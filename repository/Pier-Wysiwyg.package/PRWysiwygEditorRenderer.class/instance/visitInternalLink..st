visiting-document
visitInternalLink: aLink
	(aLink target notNil and: [ aLink target isFile ]) 
		ifTrue: [
			 ^ super visitInternalLink: aLink ].
		
	aLink isEmbedded
		ifTrue: [
			 ^ self renderNonEditableEmbeddedLink: aLink ].
		
	aLink target isNil 
		ifTrue: [
			^ self renderNonEditableBrokenLink: aLink ].
		
	(aLink class name = #PRInternalLink) not 
		ifTrue: [
			^ self renderUnknownInternalLinkType: aLink ].
	
	self renderInternalLink: aLink