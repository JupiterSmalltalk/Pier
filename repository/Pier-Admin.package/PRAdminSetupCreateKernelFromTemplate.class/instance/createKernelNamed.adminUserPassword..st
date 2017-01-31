tasks
createKernelNamed: kernelName adminUserPassword:  adminUserPassword
	| kernel adminUser |
	kernel := PRKernel named: kernelName.

	adminUser := ((PUUser named: adminUserPassword getName)
		password: adminUserPassword password; 
		addGroup: kernel adminGroup;
		superuser: true;
		yourself).
	
	kernel propertyAt: #users put: (Set with: adminUser).
	kernel propertyAt: #adminUser put: adminUser.
	
	^ kernel