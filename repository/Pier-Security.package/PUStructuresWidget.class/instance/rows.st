accessing
rows
	^ (self context enumeratorFor: self context root) 
		everything contents