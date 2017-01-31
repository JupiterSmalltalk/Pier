accessing
tabsComponent
	^ tabsComponent ifNil: [ tabsComponent := PRAdminTabs contextGetCallback: [ self context ] contextSetCallback: [ :newContext | self context: newContext ] ]