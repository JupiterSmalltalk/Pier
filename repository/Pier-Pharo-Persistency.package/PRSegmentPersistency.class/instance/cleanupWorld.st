cleanup
cleanupWorld
	"Close all windows, just in case we have some workspaces or pier browsers open that reference our model."
	<cleanup>

	World submorphs do: [ :morph | morph delete ].
	World releaseCachedState