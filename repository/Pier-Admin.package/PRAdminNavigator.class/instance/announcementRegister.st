announcing
announcementRegister
	self session pierAdminAnnouncer on: PRAdminAjaxUpdate do: [ :ajaxUpdate |
		self displayedStructure ~= self context structure ifTrue: [
			self setNavigatorSelectionToCurrentStructureOn: ajaxUpdate script.
			self displayedStructure: self context structure ] ]