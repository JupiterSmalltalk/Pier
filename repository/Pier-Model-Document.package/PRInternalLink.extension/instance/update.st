*pier-model-document
update
	"This method will be sent to all the internal-links whenever the owner is renamed or moved to a different location in the structure tree. It automatically adjusts the receivers state, so that the reference still points to the right location and doesn't get broken. The method tries to keep relative and absolute links consistent, whenever possible."	

	| absolute |
	(self target isNil or: [ self owner isNil or: [ self target root ~~ self owner root ] ])
		ifTrue: [ ^ self ].
	absolute := self reference notNil
		and: [ self reference isEmpty not
		and: [ self reference first = PRPath pathDelimiter ] ].
	reference := absolute
		ifTrue: [ self target absolutePath ]
		ifFalse: [ self owner relativePathTo: self target ]