accessing
children
	^ Array 
		with: self pierComponent
		with: self navigatorComponent
		with: self commandsComponent
		with: self tabsComponent