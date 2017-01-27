*pier-security-accessing
group
	"Answer the owning-group of the file."

	| decoration |
	^ (decoration := self securityDecoration) isNil ifFalse: [ decoration group ]