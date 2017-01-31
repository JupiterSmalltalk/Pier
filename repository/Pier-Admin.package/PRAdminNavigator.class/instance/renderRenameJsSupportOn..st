rendering
renderRenameJsSupportOn: html
	html script:
		((((html javascript alert: (JSStream on: 'message')),
		(JSStream on: '$.jstree.rollbackLast()'))
		asFunction: #(message elementId)) 
		assignLocalTo: 'renameError').