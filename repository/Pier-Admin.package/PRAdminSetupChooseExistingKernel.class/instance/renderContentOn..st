rendering
renderContentOn: html
	html div
		id: #setupAdminExistingKernel; 
		with: [
			html render: self selectKernelComponent.

			self kernelPathsPairs isEmpty ifTrue: [
				self renderOverlayWithMessage: 'No unmanaged kernels found' containerId: #setupAdminExistingKernel on: html ] ]