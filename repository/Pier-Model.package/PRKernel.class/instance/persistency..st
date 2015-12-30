accessing
persistency: aPersistency
	| replacement |
	replacement := aPersistency 
		ifNil: [ PRNullPersistency new ].
	replacement setKernel: self.
	persistency isNil
		ifFalse: [ persistency setKernel: nil ].
	persistency := replacement