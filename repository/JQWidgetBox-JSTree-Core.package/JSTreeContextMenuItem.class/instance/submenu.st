accessing
submenu
	^ submenu ifNil: [ 
		submenu := JSTreeContextMenuItems new ]