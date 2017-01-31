rendering
renderTitleOn: html
	html heading
		level1;
		class: 'adminLoginTitle';
		with: [
			html text: 'Welcome to '.
			html image url:  PRAdminFileLibrary / #pierlogo75x35Png.
			html text: ' admin' ]