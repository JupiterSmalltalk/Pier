enumerating
detect: aBlock 
	"Evaluate aBlock for every structure visited by the receiver. 
	Answer the first element for which aBlock evaluates to true."
	
	^ self detect: aBlock ifNone: [GRObject error: 'Object is not in the collection']