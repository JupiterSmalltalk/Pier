rendering
renderMainPaneOn: html
	html div
		id: #main;
		with: [
			html render: self tabsComponent.
			
			html script: self addScriptIfNotAlreadyInstalledJS.
			html script: self addStyleIfNotAlreadyInstalledJS.
			self renderViewContentOn: html ]