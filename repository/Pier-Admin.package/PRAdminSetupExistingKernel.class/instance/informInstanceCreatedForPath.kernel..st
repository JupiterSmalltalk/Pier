tasks
informInstanceCreatedForPath: adminInstancePath kernel: selectedKernelPathPair
	self twbsInformSuccess: [ :html | 
		html text: 'Admin instance created at: '; break; break.
		html anchor url: adminInstancePath; with: adminInstancePath.
		html break; break; text: 'for: '; break; break.
		html strong: selectedKernelPathPair; break; break.
		html text: 'Continue to redirect to admin instance.' ]