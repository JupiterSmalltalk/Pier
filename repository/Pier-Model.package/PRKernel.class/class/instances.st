accessing
instances
	"Answer the registered kernel instances."

	^ instances ifNil: [ instances := Set new ]