accessing
candidates
	"Answer the possible candidates to display."

	^ candidates ifNil: [ candidates := self owner enumerator contents ]