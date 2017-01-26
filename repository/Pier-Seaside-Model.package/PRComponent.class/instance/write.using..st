private
write: anObject using: aDescription
	(self basicMagritteDescription includes: aDescription)
		"the description is associated with PRComponent"
		ifTrue: [ super write: anObject using: aDescription ]
		ifFalse: [
			(anObject notNil and: [ aDescription isDocumentDescription ])
				ifTrue: [ anObject owner: self ].
				
			(self prototypeInstance magritteDescription includes: aDescription)
				ifTrue: [ self prototypeInstance write: anObject using: aDescription ]
				"if PRComponent and the prototypeInstance doesnt contain the description,
				perhaps a description has been injected into #magritteDescription
				that #basicMagritteDescription hasn't picked up."
				ifFalse: [ super write: anObject using: aDescription ] ]