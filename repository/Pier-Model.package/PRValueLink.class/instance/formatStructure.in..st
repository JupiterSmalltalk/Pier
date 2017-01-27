private
formatStructure: aStructure in: aContext
	"Format ==aStructure==. Link it, if the parameter ==link== is given; embed it, if this is an embedded link."
	
	| string |
	(aStructure hideFromMenus
		or: [ (self selectAndReject: aStructure) isNil
		or: [ (aContext structure: aStructure) isValid not ] ])
			ifTrue: [ ^ nil ].
	string := self 
		formatDescribed: aStructure
		default: #title.
	^ (self isEmbedded or: [ self hasParameter: 'link' ])
		ifTrue: [
			PRInternalLink new
				embedded: self isEmbedded;
				parameters: self parameters;
				target: aStructure;
				addAll: (string isNil
					ifTrue: [ Array new ]
					ifFalse: [ Array with: (PRText content: string) ]);
				yourself ]
		ifFalse: [ string isNil ifFalse: [ PRText content: string ] ]