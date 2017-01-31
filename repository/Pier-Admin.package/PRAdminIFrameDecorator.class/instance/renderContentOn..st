rendering
renderContentOn: html
	| initialHeadScripts initialHeadStyles |
	
	super renderContentOn: html.
	
	"populate with initial head scripts and styles"
	initialHeadScripts := self requestContext headScripts asJavascript.
	html script:  'window.parent.alreadyInstalledIFrameScripts = ', initialHeadScripts, ';'.
	
	initialHeadStyles := self requestContext headStyles asJavascript.
	html script:  'window.parent.alreadyInstalledIFrameStyles = ', initialHeadStyles, ';'.
	
	self remove. "remove this decoration - its only needed the first time"