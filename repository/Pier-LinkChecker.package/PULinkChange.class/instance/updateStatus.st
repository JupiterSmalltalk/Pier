private
updateStatus
	| response |
	target isExternal ifTrue: [
		response := self httpHead: target url.
		(response isNil)
			ifTrue: [ ^ Array with: 'Unknown' with: 'white' ].
		(response first between: 300 and: 399)
			ifTrue: [ ^ Array with: 'Redirect ' , response first greaseString with: 'yellow' with: response ].
		(response first between: 200 and: 299)
			ifTrue: [ ^ Array with: 'Valid ' , response first greaseString with: 'green' ].
		 ^ Array with: 'Error ' , response first greaseString with: 'red' ].
	^ target isBroken
		ifTrue: [ Array with: 'Error' with: 'error' ]
		ifFalse: [ Array with: 'Valid' with: 'green' ]