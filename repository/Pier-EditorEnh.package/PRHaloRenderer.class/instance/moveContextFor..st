buttons
moveContextFor: aContext
	<button: 'Move' class: 'pr-move' priority: 3.0>
	
	^ aContext command: PRMoveCommand new