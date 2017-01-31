components
index
	^ index ifNil: [ index := (BOPortion named: 'index')
		type: #chapter;
		title: 'Keyword index';
		contents: '{{{<div class="keyword-index">}}}*value:book.index|target=/book*{{{</div>}}}';
		numberedTitle: false;
		yourself ]