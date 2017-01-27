private
readUsing: aDescription
	^ self fields at: aDescription ifAbsent: [ self target readUsing: aDescription ]