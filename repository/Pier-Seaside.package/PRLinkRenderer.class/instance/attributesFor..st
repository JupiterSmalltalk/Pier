private
attributesFor: aLink
	"Answer a set of attributes from the link."

	| attributes |
	attributes := WAHtmlAttributes new.
	aLink parameters
		keysAndValuesDo: [ :k :v | 
			(self attributeNames includes: k)
				ifTrue: [ attributes at: k put: v ] ].
	^ attributes