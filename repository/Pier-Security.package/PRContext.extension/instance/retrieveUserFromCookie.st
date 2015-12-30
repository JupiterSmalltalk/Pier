*pier-security-private
retrieveUserFromCookie
	| cookie |
	cookie := ((self requestContextIfNilDo: [ ^ nil ]) request
		cookieAt: 'pr_token')
			ifNil: [ ^ nil ].
	^ self kernel users
		detect: [ :each | each token = cookie value ]
		ifNone: [ nil ]