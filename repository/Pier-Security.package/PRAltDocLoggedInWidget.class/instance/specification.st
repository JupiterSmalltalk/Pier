accessing
specification
	"Answer a description representing the receiving document."
	
	^ specification ifNil: [ specification := self buildSpecification ]