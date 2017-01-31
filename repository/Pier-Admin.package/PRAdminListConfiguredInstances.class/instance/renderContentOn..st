rendering
renderContentOn: html
	html div
		id: #setupAdminListConfiguredInstances; 
		with: [
			html div
				class: 'alert';
				with: 'Already configured instances:'.
			
			self renderConfiguredInstancesTableOn: html.

			self configuredInstancesKernelPathsPairs isEmpty ifTrue: [
				self renderOverlayWithMessage: 'No kernels found with admin instances' containerId: #setupAdminListConfiguredInstances on: html ] ]