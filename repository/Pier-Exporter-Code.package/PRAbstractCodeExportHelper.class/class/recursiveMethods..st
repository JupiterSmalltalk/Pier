instance creation
recursiveMethods: recursiveMethodsCollection
	^ self new
		recursiveMethods: recursiveMethodsCollection;
		yourself