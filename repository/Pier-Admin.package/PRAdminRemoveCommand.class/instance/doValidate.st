events
doValidate
	super doValidate.
	
	"user has confirmed remove so add to ajax update a script to delete the removed node 
	within the client-side tree"
	self pierAdminAnnouncer on: PRAdminAjaxUpdate do: [ :ajaxUpdate |
		| s |
		s := ajaxUpdate script.
		s << (s jQuery: #navigator) tree remove: (s jQuery id: (self idOfTreeNodeToRemove)).
		self pierAdminAnnouncer unsubscribe: self ]