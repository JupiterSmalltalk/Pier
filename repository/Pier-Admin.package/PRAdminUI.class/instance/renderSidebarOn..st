rendering
renderSidebarOn: html
	html div
		id: #sidebar;
		with: [ 
			self renderHeaderOn: html.
			html render: self navigatorComponent.
			html render: self commandsComponent.
			PRAdminLogin renderAssociatedPierInstanceLinkFor: self kernel text: 'Associated instance: ' on: html ]