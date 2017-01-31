private
ensureThatKeysOnMainPageAndPreviewIFrameDontClashOn: html
	"why? iframe content (preview view) and the main site content share the same message loop (to 
	ensure that changes made to one effect the other). Need a way to ensure that callback keys 
	between the iframe and the wrapper don't clash' "
	html context callbacks key: 1000.