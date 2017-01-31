helpers
magritteSelector
	^ self isPier3  
		ifTrue: [ #magritteDescription ]
		ifFalse: [ #description ]