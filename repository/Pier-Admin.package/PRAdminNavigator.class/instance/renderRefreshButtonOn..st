context menu
renderRefreshButtonOn: html
	html form
		id: #refreshNavigator;
		with: [
			html button
				bePush;
				onClick: (html jQuery ajax script: [ :s | s << (s jQuery: #navigator) replaceWith: [ : r | self renderNavigatorTreeOn: r ] ]);
				with: 'Refresh Navigator' ]