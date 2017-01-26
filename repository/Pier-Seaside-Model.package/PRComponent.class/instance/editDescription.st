accessing-description
editDescription
	^ self hasComponent
		ifFalse: [ super editDescription ]
		ifTrue: [
			MAContainer new
				addAll: ((self basicMagritteDescription
					copyWithout: self descriptionComponentClass)
					select: [ :each | each isEditable ]);
				add: (self descriptionComponentClass
					beReadonly;
					yourself);
				addAll: self componentDescription;
				yourself ]