main task
selectAndCreateFromTemplateDistribution
	|  dispatcherNameKernelNamePair  siteCreated firstTimeRound  |
	
	siteCreated := false.
	firstTimeRound := true.
	
	[ siteCreated ] whileFalse: [
		| kernel choosenDistributionInfo adminUserNamePasswordPair |
		
		choosenDistributionInfo :=  self chooseDistribution.
		adminUserNamePasswordPair isNil ifTrue: [
			adminUserNamePasswordPair := (self defineAdminUserForDistribution: choosenDistributionInfo selectedDistribution) ].
		
		kernel := self createKernelNamed: choosenDistributionInfo  kernelName adminUserPassword: adminUserNamePasswordPair.
		firstTimeRound ifTrue: [
			self twbsInformSuccess: 'Created admin user named: ''', adminUserNamePasswordPair getName contents, '''. Continue to create the site.' ].
		siteCreated := self createSiteAt: choosenDistributionInfo applicationPath forDistribution: choosenDistributionInfo selectedDistribution onKernel: kernel.
		
		firstTimeRound := false.
		dispatcherNameKernelNamePair := PRAdminSetupDistributionKernelNameDispatcherName kernelName: choosenDistributionInfo kernelName dispatcherName: choosenDistributionInfo applicationPath ].
	
	^ dispatcherNameKernelNamePair