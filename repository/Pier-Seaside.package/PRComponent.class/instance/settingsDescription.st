accessing-description
settingsDescription
	^ self hasComponent
		ifFalse: [ super settingsDescription ]
		ifTrue: [ 
			MAContainer new
				add: self descriptionComponentClass;
				addAll: (self basicMagritteDescription
					select: [ :each | each isSetting ]);
				yourself ]