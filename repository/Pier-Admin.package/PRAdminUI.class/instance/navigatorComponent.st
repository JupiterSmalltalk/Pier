accessing
navigatorComponent
	^ navigatorComponent ifNil: [ navigatorComponent := PRAdminNavigator contextGetCallback: [ self context ] contextSetCallback: [ :newContext | self context: newContext ] ]