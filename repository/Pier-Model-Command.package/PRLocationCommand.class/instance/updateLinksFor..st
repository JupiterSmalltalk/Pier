private
updateLinksFor: aStructure
	"Figure out all the structures that have a new location, then update all links pointing into the new location and update all links that go out of the new structures."
	
	| structures |
	structures := aStructure enumerator
		everything contents.
	aStructure root incomingReferences
		toAll: structures;
		do: [ :each | each update ].
	structures do: [ :structure |
		structure outgoingReferences
			do: [ :link | link update ] ]