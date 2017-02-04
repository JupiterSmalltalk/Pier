accessing
directory
	^ directory ifNil: [ directory := (FileDirectory default directoryNamed: 'pdf/' , DateAndTime now asSortableString) assureExistence ]