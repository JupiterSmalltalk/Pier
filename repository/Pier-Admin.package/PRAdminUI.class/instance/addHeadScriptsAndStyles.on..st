rendering
addHeadScriptsAndStyles: anHtmlRoot on: script
	anHtmlRoot styles do: [ :each | 
		script << (JSStream on: ('addStyleIfNotAlreadyInstalled(', each asJavascript, ')')) ].

	anHtmlRoot scripts do: [ :each |
		each isString 
			ifTrue: [
				script << (JSStream on: ('addScriptIfNotAlreadyInstalled(', each asJavascript, ')')) ]
			ifFalse: [
				script << (JSStream on: ('addScriptUrlIfNotAlreadyInstalled(', each asJavascript, ')')) ] ]