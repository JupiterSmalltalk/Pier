as yet unclassified
children
	^ self socialSharingWidget isNil 
		ifTrue: [ #() ]
		ifFalse: [ Array with: self socialSharingWidget ]