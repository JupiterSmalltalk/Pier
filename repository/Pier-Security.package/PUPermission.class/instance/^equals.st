comparing
= aPermission
	^ self species = aPermission species
		and: [ self command = aPermission command ]