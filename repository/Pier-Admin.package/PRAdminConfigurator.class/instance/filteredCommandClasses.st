private
filteredCommandClasses
	^ (self commandClasses) copyWithoutAll: (self excludedCommandClasses)