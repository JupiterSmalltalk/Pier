visiting
start: anObject
	enabled := false.
	current := 1.
	counter := (Array new: 6) atAllPut: 0.
	html unorderedList
		class: 'toc';
		with: [ super start: anObject ]