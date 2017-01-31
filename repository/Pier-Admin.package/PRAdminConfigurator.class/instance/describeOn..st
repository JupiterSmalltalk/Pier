description
describeOn: configuration
	self describeViewsOn: configuration.
	self describeGlobalCommandsOn: configuration.
	self describeAdminKernelPathPairOn: configuration