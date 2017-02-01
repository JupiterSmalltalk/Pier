private
readUsing: aDescription
	^ self settings
		at: (aDescription
			propertyAt: #urlparam
			ifAbsent: [ ^ super readUsing: aDescription ])
		ifAbsent: [ aDescription default ]