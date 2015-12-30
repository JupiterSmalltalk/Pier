configuration
defaultPermissions
	^ (Array streamContents: [ :stream |
		PRCommand allSubclasses do: [ :each |
			each isAbstract
				ifFalse: [ stream nextPutAll: each permissions ] ] ])
		asSortedCollection: [ :a :b | a label < b label ]