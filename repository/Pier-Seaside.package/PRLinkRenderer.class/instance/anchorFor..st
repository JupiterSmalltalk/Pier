private
anchorFor: aLink
	"Answer a default anchor for aLink."
	
	| anchor |
	anchor := html anchor.
	anchor attributes: (self attributesFor: aLink).
	anchor attributes at: 'title' ifAbsentPut: [ aLink title ].
	^ anchor