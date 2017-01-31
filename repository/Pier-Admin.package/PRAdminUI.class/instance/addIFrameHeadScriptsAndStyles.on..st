renderering hijax
addIFrameHeadScriptsAndStyles: htmlRoot on: script
	htmlRoot styles do: [ :each | 
		script << (JSStream on: ('addIFrameStyleIfNotAlreadyInstalled(',  each asJavascript, ')')) ].
	
	htmlRoot scripts do: [ :each |
		each isString
			ifTrue: [
				script << (JSStream on: ('addIFrameScriptIfNotAlreadyInstalled(', each asJavascript, ')')) ]
			ifFalse: [
				script <<  (JSStream on: ('addIFrameScriptUrlIfNotAlreadyInstalled(', each asJavascript, ')')) ] ]