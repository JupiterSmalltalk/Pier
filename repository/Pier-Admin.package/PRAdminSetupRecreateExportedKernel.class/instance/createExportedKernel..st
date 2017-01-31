tasks
createExportedKernel: kernelCreator
	kernelCreator register.
	self twbsInformSuccess: [ :html |
		html text: 'Created kernel: '''; strong: kernelCreator kernelName; text: ''', path: '.
		html anchor url: kernelCreator dispatcherPathName; with: kernelCreator dispatcherPathName ]