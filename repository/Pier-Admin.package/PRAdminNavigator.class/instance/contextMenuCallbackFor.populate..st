context menu
contextMenuCallbackFor: structure populate: menuCollection
	self contextMenuItems do: [ :each |
		 self perform: each with: structure with: menuCollection ]