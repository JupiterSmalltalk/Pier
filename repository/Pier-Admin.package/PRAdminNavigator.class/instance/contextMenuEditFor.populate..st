context menu
contextMenuEditFor: structure populate: menuCollection
	| menuItem |

	menuItem := self contextMenuCommand: PREditCommand for: structure populate: menuCollection.
	menuItem separatorAfter: true.