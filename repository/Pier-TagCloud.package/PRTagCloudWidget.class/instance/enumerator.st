accessing
enumerator
	"Answer an enumerator to visit the necessary structures to collect the tags."
	
	^ (self context enumeratorFor: self structure) with all