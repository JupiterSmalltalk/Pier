accessing
permissions
	^ Set new
		addAll: PRAddCommand permissions;
		addAll: PRRemoveCommand permissions;
		yourself