initialization
initialize
	self migrateParameters.
	self migrateChildren.
	self migrateTableCells.
	self migrateLinkOwner.
	self migrateObsoleteWidgets.
	self migrateChildrenArray