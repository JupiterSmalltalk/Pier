accessing
initializeVisualComponentSettings: aComponent link: anInternalLink
	"The components (or widgets) cannot carry their own configuration, because they are instantiated later on a per-session basis.
	 So the configuration is held within a generic model object - PRComponent - that takes a prototype instance  and uses the
	component's Magritte descriptions to copy the settings from the prototype into the session instantiated component. The settings
	can be overridden with the settings given in the link that embeds the component."
	
	(self componentDescription: aComponent) do: [ :description |
		| aValue |
		aValue := self prototypeInstance readUsing: description.
		aComponent initializeAttribute: description with: aValue overridWith: anInternalLink].