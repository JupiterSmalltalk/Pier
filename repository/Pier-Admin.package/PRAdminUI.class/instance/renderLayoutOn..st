rendering
renderLayoutOn: html
 	| myLayout |
	myLayout := (html jQuery: 'body') layout.
	myLayout west
		at: 'size' put: 200; 
		"at: 'maxSize' put: 280;"
		at: 'onresize' put: ((html jQuery: #sidebars) accordion resize) asFunction ; 
		at: 'togglerLength_open' put: 20; 
		at: 'togglerLength_closed' put: 20; 
		at: 'togglerAlign_open' put: 'top'; 
		at: 'togglerAlign_closed' put: 'top'; 
		at: 'togglerContent_closed' put: '&#8250';
		at: 'togglerContent_open' put: '&#8249'.
	myLayout east
		at: 'initClosed' put: true.
	html document addLoadScript: myLayout.