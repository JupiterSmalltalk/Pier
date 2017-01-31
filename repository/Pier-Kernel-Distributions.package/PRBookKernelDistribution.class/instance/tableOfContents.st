components
tableOfContents
	^ tableOfContents ifNil: [ tableOfContents := (BOPortion named: 'table-of-contents')
		title: 'Table of contents';
		type: #chapter;
		contents: '{{{<div class="table-of-contents">}}}*value:book.contents|target=/book*{{{</div>}}}';
		numberedTitle: false;
		yourself ]