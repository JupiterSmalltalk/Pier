*pier-seaside-testing
hasContentsWidget
	^ self embeddedComponents anySatisfy: [ :each | each target componentClass includesBehavior: PRContentsWidget ]