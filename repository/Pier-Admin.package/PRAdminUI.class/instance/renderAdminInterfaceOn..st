rendering
renderAdminInterfaceOn: html
	html div
		class: 'ui-layout-west';
		id: #sidebars;
		with: [ self renderSidebarOn: html ].
	
	html div
		class: 'pane ui-layout-center';
		id: 'center';
		with: [ 
			self renderMainPaneOn: html ].
		
	self renderLayoutOn: html