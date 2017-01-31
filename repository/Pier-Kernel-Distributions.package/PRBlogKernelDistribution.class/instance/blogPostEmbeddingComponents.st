sample content
blogPostEmbeddingComponents
	^ (PBPost named: 'embedding-components')
		title: 'Embedding components';
		tags: #('components' 'embedding' 'Seaside');
		publication: TimeStamp now;
		contents:
'Embedding Seaside components is straightforward. Simply add a component to a node within the site''s tree structure, then add a reference to that component within a blog post. For example if you add a component as a child of this post, you can then then embed the component using the syntax. \+mychild\+. Here is an embedded ajaxified counter:

+ajaxcounter+

...and the standard counter:

+counter+

Test Seaside''s state management by clicking on the \+\+ and \-\- links. Pier blogs are ideal for demoing and describing your Seaside components. In fact you can use Pier as the basis for application development by embedding components in pages, especially if you are building a content-rich site.';
		addChild: ((PRComponent named: 'ajaxcounter')
			componentClass: JQCounterFunctionalTest;
			yourself);
		addChild: ((PRComponent named: 'counter')
			componentClass: WACounter;
			yourself);
		yourself.