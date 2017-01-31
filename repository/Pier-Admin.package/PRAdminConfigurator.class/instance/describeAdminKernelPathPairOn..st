description
describeAdminKernelPathPairOn: configuration
	(configuration list: #pierAdminKernelPathPair)
		comment: 'Which kernel to administer';
		options: [ PRAdminKernelPathPair kernelPathPairs ];
		default: nil