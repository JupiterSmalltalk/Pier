context menu
contextMenuRemoveFor: structure populate: menuCollection
	| commandMenu |
	commandMenu := JSTreeContextMenuItem label: PRRemoveCommand label.
	commandMenu action: [ :s | 
		self context: (self context structure: structure command: 
			(PRAdminRemoveCommand 
				idOfTreeNodeToRemove: (self convertStructureToId: structure)
				pierAdminAnnouncer: self session pierAdminAnnouncer)).
		self announceAjaxUpdateWithoutSelfOn: s ].
	menuCollection addMenuItem: commandMenu.