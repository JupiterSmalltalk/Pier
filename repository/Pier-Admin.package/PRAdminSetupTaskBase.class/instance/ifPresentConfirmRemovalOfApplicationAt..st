admin ui tasks
ifPresentConfirmRemovalOfApplicationAt: dispatcherPathName
	| okToContinue |
	okToContinue := true.
	
	(self isApplicationAlreadyRegisteredAt: dispatcherPathName) ifTrue: [
		(self confirmApplicationReplacementAt: dispatcherPathName) 
			ifTrue: [ self removeApplicationRegisteredAt: dispatcherPathName]
			ifFalse: [ okToContinue := false ] ].
		
	^ okToContinue