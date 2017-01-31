action
extractFeedFromHtml: htmlContent
	| matches hrefs lastStartIndex matcher response |
	
	matcher := 'href=["|''](.*)["|'']' asRegex.
	lastStartIndex := 1.
	matches := htmlContent allRegexMatches: '<link\s+rel=["|'']alternate["|'']\s+type=["|'']application/rss\+xml["|'']'.
	hrefs := matches inject: OrderedCollection new into: [ :result :each |
		| startIndex endIndex element |
		startIndex := htmlContent indexOfSubCollection: each startingAt: lastStartIndex ifAbsent: [ 0 ].
		endIndex := htmlContent findString: '>' startingAt: startIndex.
		element := htmlContent copyFrom: startIndex to: endIndex.
		lastStartIndex := endIndex.
		matcher search: element.
		matcher subexpressionCount = 2 ifTrue: [
			| aFeedUrl |
			aFeedUrl := matcher subexpression: 2.
			(aFeedUrl includesSubString: 'comment') ifFalse: [ result add: aFeedUrl ] ].
		result ].

	hrefs 
		detect: [ :each |
			[ response := ZnEasy get: each ]
				on: Error
				do: [ :ex | 
					self errorTextFromException: ex.
					response := nil ].
			response notNil and: [ response contentType sub includesSubString: 'xml' ] ]
		ifNone: [ response := nil ].
		
	^ response