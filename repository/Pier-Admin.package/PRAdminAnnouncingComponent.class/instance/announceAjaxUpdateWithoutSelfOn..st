announcing
announceAjaxUpdateWithoutSelfOn: script
	self announcementUnregister.
	self announceAjaxUpdate: script.
	self announcementRegister