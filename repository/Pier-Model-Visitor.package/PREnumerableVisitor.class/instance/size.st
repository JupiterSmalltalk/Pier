accessing
size
	"Answer the number of elements."

	| tally |
	tally := 0.
	self do: [ :each | tally := tally + 1 ].
	^ tally