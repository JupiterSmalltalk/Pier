private
distributions
	^ distributions ifNil: [
		 distributions := (OrderedCollection withAll: PRAbstractKernelDistribution withAllConcreteClasses) sort: [ : a :b  | a name < b name ] ]