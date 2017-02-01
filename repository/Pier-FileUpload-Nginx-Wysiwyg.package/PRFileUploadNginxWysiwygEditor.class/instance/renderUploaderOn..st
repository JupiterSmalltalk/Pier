rendering
renderUploaderOn: html
	html div: [
		html render: self uploadComponent.
		(html tag: 'style') 
			attributeAt: 'type' put: 'text/css'; 
			with: '#', self progressBarId, ' .ui-widget-header {background-color: #5C9CCC}'.
		html div
			id: self progressBarId;
			style: 'margin-left:5px; margin-right:20px; height: 1em; display: none; '. "start off hidden"
	
		html div id: self notificationId ]