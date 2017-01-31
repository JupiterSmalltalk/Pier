running
go
	| kernelNamedispatcherNamePair |
	
	kernelNamedispatcherNamePair := self selectAndCreateFromTemplateDistribution.
	self queryAdminUICreationFor: kernelNamedispatcherNamePair kernelName at: kernelNamedispatcherNamePair dispatcherName