accessing
children
	^ (PROutgoingReferences on: self document) embeddedComponents 
		collect: [ :each | self context componentFor: each ]