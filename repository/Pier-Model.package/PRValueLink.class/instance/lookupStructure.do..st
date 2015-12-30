private
lookupStructure: aStructure do: aBlock
	"Lookup aStructure and evaluate aBlock if it is found. This performs different kinds of navigation starting from aStructure. If the parameter ==path== is given an absolute or relative lookup is started. The parameter ==level== choses a structure at the specified level in the parent chain, where the root is 1 and direct children of the root 2, etc. 0 is the current structure, -1 the parent of the current structure, etc. Furthermore the levels can be delimited using ==lower== and ==upper== bounds."

	| structure |
	structure := aStructure ifNil: [ ^ nil ].
	self parameters at: 'target' ifPresent: [ :path |
		structure := structure
			lookupPath: path
			ifAbsent: [ ^ nil ] ].
	(self hasParameter: 'level') ifTrue: [
		| parents extractor level |
		parents := structure parents.
		extractor := [ :name |
			| value |
			value := (self parameters at: name ifAbsent: [ nil ] )
				asNumber greaseInteger.
			value < 1
				ifTrue: [ parents size + value ]
				ifFalse: [ value ] ].
		((level := extractor value: 'level') between: 1 and: parents size)
			ifFalse: [ ^ nil ].
		((self hasParameter: 'lower') and: [ level < (extractor value: 'lower') ])
			ifTrue: [ ^ nil ].
		((self hasParameter: 'upper') and: [ level > (extractor value: 'upper') ])
			ifTrue: [ ^ nil ].
		structure := parents at: level ifAbsent: [ ^ nil ] ].
	^ aBlock value: structure