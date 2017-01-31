rendering
renderLeaveCommentOn: html
	html div class: 'leavecomment'; with: [
		html heading level: 2; with: 'Leave your comment'.
		html render: self component ]