accessing
setOwnerOnPrototypeDocuments
	"Ensures that documents contained within the the prototype instance set  ==self== as the owner.
	This is the #prototypeInstance: equivalent of the #isDocumentDescription test in PRComponent>>#write:using:
	Setting the owner to ==self== appears to be important for links contained within the document."
	prototypeInstance magritteDescription do: [ :each |
		each isDocumentDescription ifTrue: [ 
			| document |
			document := (prototypeInstance readUsing: each).
			document isNil ifFalse: [
				document owner: self ] ] ]