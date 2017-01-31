private
document
	| document |
	
	document := PRDocumentParser parse: self wikiText.
	self structureOwner notNil ifTrue: [ document owner: self structureOwner ].
	
	^ document