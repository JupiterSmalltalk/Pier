rendering-options
renderOptionRootOn: html
	<option: 200>
	
	| rootContext |
	rootContext := self context structure: self context root.
	rootContext isValid ifTrue: [
		html listItem: [
			html text: 'Jump to the '.
			html anchor
				goto: rootContext;
				with: rootContext structure title.
			html text: ' homepage.' ] ]