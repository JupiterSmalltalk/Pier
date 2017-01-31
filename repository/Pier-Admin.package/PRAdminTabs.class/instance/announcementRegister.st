announcing
announcementRegister
	self session pierAdminAnnouncer on: PRAdminAjaxUpdate do: [ :ajaxUpdate |
		self selectedContextViewClass ~= lastViewClass ifTrue: [
			| s |
			lastViewClass := self selectedContextViewClass.
			s := ajaxUpdate script.
			s << (s jQuery: #tabs) replaceWith: [ :r | r render: self ] ] ]