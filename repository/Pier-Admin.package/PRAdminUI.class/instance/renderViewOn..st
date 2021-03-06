renderering hijax
renderViewOn: html
	| callbackUrl jqPost requestType |
	"valueholder for Gemstone 2.4.* compatibility see:
	- http://code.google.com/p/glassdb/issues/detail?id=221
	- http://forum.world.st/use-of-method-temporaries-in-callback-blocks-td2340788.html"
	callbackUrl := WAValueHolder new. 
	requestType := WAValueHolder new.
	
	jqPost := html jQuery post
		callback: [ :value |
			| parameters |
			parameters := value subStrings: ','.
			self assert: parameters size = 2.
			callbackUrl contents: (WAUrl absolute: parameters first).
			requestType contents: parameters second ] 
			value: (JSStream on: '[url, (data==null) ? "GET" : "POST"]');
		addParameter: (JSStream on: 'data').
		
	jqPost script: [ :s | 
		self renderViewResponseForUrl: callbackUrl contents requestType: requestType contents callbackId: jqPost callbackId on: s.
		self announceAjaxUpdateWithoutSelfOn: s ].
	
	html script: ((jqPost asFunction: #('url' 'data')) assignLocalTo: 'handleViewClick').

	html render: self pierComponent.
	
	html document addLoadScript: 
		((html jQuery: #content)
			on: 'click'
			selector: 'a'
			do: '
			if (this.getAttribute("href")) {
				var urlParts = this.getAttribute("href").split("?");
				if (urlParts.length > 1 && (urlParts[1].substr(0, 2) == "_s" ||  urlParts[1].substr(0, 2) == "_k")) {
					handleViewClick(this.getAttribute("href"), null); return false;
				}
			}
			return true;';
			on: 'click'
			selector: 'input[type=submit], button[type=submit]'
			do: 'var form = $(this).closest("form"); 
				if(form.length == 1) {
					handleViewClick(form.attr("action"), form.find(":input").serialize() + "&" + $(this).attr("name")); 
					return false
				}')