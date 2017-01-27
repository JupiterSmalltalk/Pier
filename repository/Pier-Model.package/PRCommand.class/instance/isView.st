testing
isView
	"Most commands are not a view. This means they override ==#doExecute== to do something meaningful on the context or the model."

	^ false