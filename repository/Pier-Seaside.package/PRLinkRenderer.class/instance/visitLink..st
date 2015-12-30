visiting-document
visitLink: aLink
	"If present render the alias of the link with the default renderer, otherwise simply display the title."

	aLink hasAlias
		ifTrue: [ parent visitAll: aLink children ]
		ifFalse: [ html html: aLink title ]