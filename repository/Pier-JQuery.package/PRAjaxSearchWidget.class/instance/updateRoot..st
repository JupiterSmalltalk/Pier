updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.	 
			
	"assume that jQuery libraries are already loaded"
	anHtmlRoot javascript url: JQWidgetBoxDeploymentLibrary / #jqueryexampleminJs.
	anHtmlRoot stylesheet add: '.PRAjaxSearchWidgetExampleTextCss {color: gray;}'