private
write: anObject using: aDescription
	^ self settings
		at: (aDescription
			propertyAt: #urlparam
			ifAbsent: [ ^ super write: anObject using: aDescription ])
		put: anObject