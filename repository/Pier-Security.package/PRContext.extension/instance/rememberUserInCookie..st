*pier-security-private
rememberUserInCookie: aUser
	| cookie requestContext |
	requestContext := self requestContextIfNilDo: [ ^ nil ].
	
	cookie := requestContext newCookie
		key: 'pr_token'.
		
	aUser isNil
		ifTrue: [ cookie value: ''; expireIn: -356 days ]
		ifFalse: [ cookie value: aUser token; expireIn: 7 days ].		
	
	requestContext response addCookie: cookie