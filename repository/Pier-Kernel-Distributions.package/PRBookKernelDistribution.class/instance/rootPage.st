components
rootPage
	^ rootPage ifNil: [
		rootPage := (PRPage named: 'pier')
			title: 'Welcome to Pier!';
			yourself.

		rootPage 
			contents:
'This is the main page of the Pier book distribution.

Jump to the *book>\book*.'.
		rootPage
			addChild: self book.
		
		rootPage ]