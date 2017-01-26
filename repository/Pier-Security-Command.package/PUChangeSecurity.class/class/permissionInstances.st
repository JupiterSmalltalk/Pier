private
permissionInstances
	^ PRCommand withAllConcreteClasses gather: [ :each | each permissions ]