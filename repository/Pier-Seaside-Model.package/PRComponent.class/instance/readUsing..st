private
readUsing: aDescription
	"first check to see if ==aDescription== is a valid description on this PRComponent, if not
	check to see if ==aDescription== is a valid description on the prototypeInstance"
	^ (self basicMagritteDescription includes: aDescription)
		ifTrue: [ super readUsing: aDescription ]
		ifFalse: [ 
			(self prototypeInstance magritteDescription includes: aDescription) 
				ifTrue: [ self prototypeInstance readUsing: aDescription ] ]