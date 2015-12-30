querying
valueIn: aContext
	"Answer the current value within aContext. The answer is either a ==PRDocument== composite, any other ==Object== that is printable, or ==nil== if context or parameters are invalid."

	^ (aContext notNil and: [ self class selectors includes: self selector ])
		ifTrue: [ self perform: self selector with: aContext ]