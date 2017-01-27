processing
handleFiltered: aRequestContext
	^ PRCurrentContextHolder use: presenter during: [ super handleFiltered: aRequestContext ]