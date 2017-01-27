rendering-options
renderSearchOn: html
	<option: 500>
	
	| widgets |
	widgets := self context structure environment embeddedComponents
		select: [ :each | each target componentClass includesBehavior: PRSearchWidget ].
	widgets isEmpty ifTrue: [ ^ self ].
	html listItem: 'Use the search on this page to find what you are looking for.'