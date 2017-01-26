*pier-seaside-core-accessing
componentsIn: aContext
	^ self embeddedComponents collect: [ :each | aContext componentFor: each ]