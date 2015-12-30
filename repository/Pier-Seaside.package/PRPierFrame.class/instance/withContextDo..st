private
withContextDo: aBlock
	^ PRCurrentContextHolder use: self during: aBlock