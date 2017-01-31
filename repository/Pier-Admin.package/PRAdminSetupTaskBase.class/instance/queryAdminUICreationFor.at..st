admin ui task main
queryAdminUICreationFor: kernelName at: dispatcherName
	| adminInstancePath |
	(adminInstancePath := self confirmCreateAdminInstanceFor: kernelName at: dispatcherName) notNil 
		ifTrue: [
			self createAdminInstanceFor: kernelName dispatcher: dispatcherName at: adminInstancePath.
			self informAdminInstanceCreatedAt: adminInstancePath.
			self redirectTo: adminInstancePath ]
		ifFalse: [
			self informRedirectTo: dispatcherName.
			self redirectTo: dispatcherName ]