*pier-seaside-environment
styleSheets
	"Answer the a collection of stylesheets of the receiver."
	| all |
	all := self parents collect: [ :each | each localStyleSheet ].
	^ all reject: [ :each | 
		each isNil or: [ 
			each file isNil ] ]