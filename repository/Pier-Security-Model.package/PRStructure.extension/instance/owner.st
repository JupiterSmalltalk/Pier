*pier-security-model-accessing
owner
	"Answer the owning-user of the receiver."

	| decoration |
	^ (decoration := self securityDecoration) isNil ifFalse: [ decoration owner ]