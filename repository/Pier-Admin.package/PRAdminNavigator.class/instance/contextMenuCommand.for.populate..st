context menu
contextMenuCommand: command for: structure populate: menuCollection
	| commandMenu |
	(command isValidIn: self context) ifFalse: [ ^ self ].

	commandMenu := JSTreeContextMenuItem label: command label.
	commandMenu action: [ :s | 
		self context: (self context structure: structure command: command new).
		self announceAjaxUpdateWithoutSelfOn: s ].
	menuCollection addMenuItem: commandMenu.
	
	^ commandMenu