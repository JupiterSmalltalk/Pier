buttons
removeContextFor: aContext
	<button: 'Remove' class: 'pr-remove' priority: 3.1>
	
	^ aContext command: PRRemoveCommand new