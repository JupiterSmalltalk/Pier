visiting-document
visitInternalLink: aLink
	| anchor |
	anchor := self anchorFor: aLink.
	anchor class: 'internal'; goto: (self contextForLink: aLink).
	aLink anchor isNil ifFalse: [ 
		anchor url fragment: (aLink anchor
			select: [ :each | each isAlphaNumeric ]) ].
	anchor with: [ self visitLink: aLink ]