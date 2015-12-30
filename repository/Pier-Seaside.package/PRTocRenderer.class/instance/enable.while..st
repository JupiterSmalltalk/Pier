utilities
enable: aBoolean while: aBlock
	| old |
	old := enabled. enabled := aBoolean.
	aBlock ensure: [ enabled := old ]