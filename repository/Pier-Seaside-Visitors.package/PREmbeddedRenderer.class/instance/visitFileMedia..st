visiting-structure
visitFileMedia: aStructure
	<internal: 'video/' priority: 0>
	<internal: 'audio/' priority: 0>

	| url mime |
	url := aStructure file url.
	mime := aStructure file mimetype.
	(html tag: 'object')
		attributes: (self attributesFor: link);
		attributeAt: 'data' put: url;
		attributeAt: 'type' put: mime;
		with: [ 
			(html tag: 'param')
				attributeAt: 'name' put: 'src';
				with: url.
			(html tag: 'param')
				attributeAt: 'name' put: 'scale';
				with: 'aspect'.
			(html tag: 'param')
				attributeAt: 'name' put: 'autoplay';
				with: 'false'.
			(html tag: 'embed')
				attributes: (self attributesFor: link);
				attributeAt: 'src' put: url;
				attributeAt: 'scale' put: 'aspect';
				attributeAt: 'autoplay' put: 'false';
				attributeAt: 'type' put: mime;
				with: [ super visitInternalLink: link ] ]