adding
addDecoration: aDecoration
	"Add ==aDecoration== to the receiver. This message ensures that ==aDecoration== is only added once and that the decorations remain properly sorted."

	^ self
		addDecoration: aDecoration
		ifPresent: [ :value | PRDecorationError signal: 'Decoration is already part of receiver.' ]