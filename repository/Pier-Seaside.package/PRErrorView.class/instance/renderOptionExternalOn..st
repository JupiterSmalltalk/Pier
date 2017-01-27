rendering-options
renderOptionExternalOn: html
	<option: 400>
	
	| referer |
	referer := self requestContext request referer.
	referer isNil ifFalse: [
		html listItem: [
			html text: 'If you clicked a link from an external page '.
			html anchor
				url: referer;
				with: referer.
			html text: ', please inform the webmaster of this site of his mistake.' ] ]