commands
addableChildStructureClassesFor: aContext
	| addableChildStructureClasses |
	addableChildStructureClasses := PRStructure withAllConcreteClasses select: [ :each |
		(aContext structure class canBeParentOf: each)
			and: [ each canBeChildOf: aContext structure class ] ].
	
	addableChildStructureClasses := addableChildStructureClasses select: [ :class |
		aContext structure securityDecoration
			hasPermission: (PUAddPermission
				on: PRAddCommand structure: class)
			for: aContext user ].
	
	"reject PRFile as file uploads dont work in the admin interface as ajax doesnt support
	multipart file uploads. Instead the WYSIWYG editor allows file uploads via hidden iframe"	
	^ addableChildStructureClasses reject: [ :each | each name = PRFile name ]