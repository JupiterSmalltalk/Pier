private
renderInternalLink: aLink
	| anchor  referenceRenderer |
	
	referenceRenderer := PRReferenceRenderer parent: self.
	referenceRenderer renderer: html.
	
	anchor := referenceRenderer anchorFor: aLink.
	anchor class: 'internal'; goto: (referenceRenderer contextForLink: aLink).
	aLink anchor isNil ifFalse: [ 
		anchor url fragment: (aLink anchor
			select: [ :each | each isAlphaNumeric ]) ].
	anchor 
		url: anchor url purgeSeasideFields;
		with: [ referenceRenderer visitLink: aLink ].