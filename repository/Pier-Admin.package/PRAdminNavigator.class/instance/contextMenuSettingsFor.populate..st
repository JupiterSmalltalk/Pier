context menu
contextMenuSettingsFor: structure populate: menuCollection
	| menuItem |

	menuItem := self contextMenuCommand: PRSettingsCommand for: structure populate: menuCollection.
	menuItem separatorAfter: true.