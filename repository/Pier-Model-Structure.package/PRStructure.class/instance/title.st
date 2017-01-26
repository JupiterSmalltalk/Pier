accessing
title
	"Answer the title of the receiver, essentially the name but starting uppercase."

	^ title ifNil: [ title := self name capitalized ]