announcing
announcementRegister
	self session pierAdminAnnouncer on: PRAdminAjaxUpdate do: [ :ajaxUpdate |
		| s |
		s := ajaxUpdate script.
		self renderHeadScriptsAndStylesOn: s.
		
		"deliberately replace the contents of css '#content ' so that #delegate:on:do: anchors and 
		buttons will be reset and new ones redelegated (as those anchors and buttons are 
		delegated via '#content')"
		s << (s jQuery: #content) replaceWith:  [ :r | self renderViewContentOn: r ] ]