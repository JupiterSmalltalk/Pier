renderering hijax
renderViewResponseForUrl: callbackUrl requestType: requestType callbackId: callbackId on: script
	| requestContext document |

	requestContext := self renderResponseForUrl: callbackUrl requestType: requestType  callbackId: callbackId.
	document := requestContext document.
	
	document isNil 
		ifTrue: [
			"some views generate a response directly eg wikiview"
			script <<  
				 (script jQuery: #content) html: [ :r | 
					self renderNonDocumentResponse: requestContext response on: r ] ]
		ifFalse: [
			"the  rendering artifacts (head, body, scripts) have been separated"
			self addHeadScriptsAndStyles: document htmlRoot on: script.

			script << (script jQuery: #content) html: [ :r | r html: document bodyHtml ].
	
			document bodyScripts do: [ :each |
				script << (JSStream on: each) ].	
	
			document loadScripts do: [ :each |
				script << (JSStream on: each asJavascript) ] ]