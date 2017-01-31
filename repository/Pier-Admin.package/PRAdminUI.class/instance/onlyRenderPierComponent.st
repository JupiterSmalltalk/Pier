rendering
onlyRenderPierComponent
	"After the initial rendering, content is rendered via ajax updates.
	 When we re-render the view we only want to render the main content 
	not the complete admin UI.... so the #show: below ensures that 
	subsequent renderings never get here; only the main content 
	(pierFrame) is rendered - that is the Admin UI is never re-rendered
	directly"
	self home; show: self pierComponent.