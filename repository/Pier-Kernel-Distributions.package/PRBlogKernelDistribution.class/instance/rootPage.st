components
rootPage
	^ rootPage ifNil: [
		rootPage := (PRPage named: 'pier')
			title: 'Welcome to Pier!';
			yourself.

		rootPage 
			contents:
'This is the main page of the Pier blog distribution.'.
		rootPage
			addChild: self blog.
		
		rootPage ]