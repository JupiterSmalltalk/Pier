rendering
renderContentOn: html
	html div
		id: #setupAdminKernelFromTemplate;
		with: [
			html div
				id: #selectDistributionFormContainer;
				with: self selectDistributionComponent.
				
			self renderAjaxSelectUpdateOn: html.
			
			self distributions isEmpty ifTrue: [
				self renderOverlayWithMessage: 'No templates found' containerId: #setupAdminKernelFromTemplate on: html ] ]