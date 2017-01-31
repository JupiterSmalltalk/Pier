components
tableOfFigures
	^ tableOfFigures ifNil: [ tableOfFigures := (BOPortion named: 'table-of-figures')
		title: 'Table of figures';
		type: #chapter;
		contents: '{{{<div class="table-of-figures">}}}*value:book.figures|target=/book*{{{</div>}}}';
		numberedTitle: false;
		yourself ]