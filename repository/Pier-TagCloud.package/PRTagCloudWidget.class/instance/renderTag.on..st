rendering
renderTag: anAssociation on: html
	| diff percent |
	(self showExponential)
		ifTrue: [
			| min max |
			min := self tagsByCount first value size.
			max := self tagsByCount last value size.
			(diff := max - min) isZero
				ifTrue: [ diff := 1 ].
			percent := ((anAssociation value size - min) * 100.0 / diff) + 100 ]
		ifFalse: [
			diff := ((anAssociation value size - self mean) / self deviation) exp.
			percent := ((diff - 1) / (diff + 1) * (1.8 ln)) exp * 100.0 ].
		
	self renderTag: anAssociation on: html fontSize: percent