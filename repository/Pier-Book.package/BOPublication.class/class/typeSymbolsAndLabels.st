accessing
typeSymbolsAndLabels
	^ ((1 to: self typeSymbols size) collect: [ :index |	(self typeSymbols at: index) -> (self typeLabels at: index) ])