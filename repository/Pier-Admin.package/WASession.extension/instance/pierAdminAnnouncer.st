*pier-admin
pierAdminAnnouncer
	^ self properties at: #pierAdminAnnouncer ifAbsentPut: [ Announcer new ]