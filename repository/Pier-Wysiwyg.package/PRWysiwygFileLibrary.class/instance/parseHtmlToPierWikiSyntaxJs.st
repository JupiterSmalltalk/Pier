uploaded
parseHtmlToPierWikiSyntaxJs
	"startNode = root node for the parser to start it's translation
	baseUrl = dispatcher location eg '/pier' - if the site serves directly from the root, pass an empty string (used by anchor and image  -> internal link translation)."
	
	^ 'var parseHtmlToPierWikiSyntax = function (startNode, baseUrl) {
	var wikiOutput = [];
	var newLine = "\n"
	var surroundingMarkupArray = [];
	var markupEscapes = [];
	var escapeText = true;
	var listMarkup = [];
	
	var surroundingMarkup = function(markup) {
		if (surroundingMarkupArray.indexOf(markup) == -1) {
			surroundingMarkupArray.push(markup);
		}
		
		return function(node) {
			if (recurseChildNodesToEnsureOnlyInlineElements(node.firstChild)) {
				wikiOutput.push(markup);
				walkTheDOM (node.firstChild);
				wikiOutput.push(markup);
			} else {
				walkTheDOM (node.firstChild);
			}
		}
	}
	
	var startLineMarkup = function(markup) {
		return function(node) {
			// if not at the start of the document
			if (wikiOutput.length) {
				wikiOutput.push(newLine);
			}
			if (markup.length) {
				wikiOutput.push(markup);
			}
			walkTheDOM (node.firstChild);
			wikiOutput.push(newLine);
		}
	}
	
	var paragraphMarkup = function() {
		return function(node) {
			// if not at the start of the document
			if (wikiOutput.length) {
				wikiOutput.push(newLine);
			}
			if (node.className && node.className.indexOf("annotated") != -1) {
				wikiOutput.push("@@");
				wikiOutput.push(node.className.substring(10, node.className.length));
				wikiOutput.push(" ");
			}
			walkTheDOM (node.firstChild);
			wikiOutput.push(newLine);
		}
	}
	
	var parseListType = function (node) {
		var listItemWikiMarkup = ''(unknown list type)'';
		var nodeName = node.nodeName.toLowerCase();

		if (nodeName == ''ul'') {
			listItemWikiMarkup = "-";
		}
		if (nodeName == ''ol'') {
			listItemWikiMarkup = "#";
		}
		if (nodeName == ''dl'') {
			// the dt or dd elements in a definition list define their
			// list element markup so no need to specify a list item 
			// character.
			listItemWikiMarkup = "";
		}
		return listItemWikiMarkup;
	}	
	
	var listWalk = function () {
		return function (node) {

			var startLength = wikiOutput.length;
			
			listMarkup.push(parseListType(node));
			walkTheDOM (node.firstChild);
			listMarkup.pop();
			
			var endLength = wikiOutput.length;

			// remove consecutive new lines. 
			var previousNewLineIndex = -1;
			for (var i = startLength - 1; i < endLength; ++i) {
				if (wikiOutput [i] == newLine) {
					// we have consecutive new lines.
					if (previousNewLineIndex == i - 1) {
						delete wikiOutput [i];
					}
				previousNewLineIndex = i;		
				}
			}
			
			// ensure we finish with a new line
			if (wikiOutput [wikiOutput.length - 1] && wikiOutput [wikiOutput.length - 1] != newLine) {
				wikiOutput.push(newLine);
			}
			
			// ensure there is only a single space between the list markup and the list contents
			for (var i = startLength - 1; i < endLength; ++i) {
				var firstCharacter = wikiOutput [i] && wikiOutput [i].length ? wikiOutput [i] [0]: '''';
				if ((firstCharacter == "#" || firstCharacter == "-" || firstCharacter == ":" || firstCharacter == ";") && (i + 1 < wikiOutput.length)) {
					var listElement = wikiOutput [i + 1];
					var firstNonSpaceIndex = 0;
					while (firstNonSpaceIndex < listElement.length && listElement [firstNonSpaceIndex] == " ") {
						++ firstNonSpaceIndex  ;
					}
					wikiOutput [i + 1] = listElement.substring (firstNonSpaceIndex, listElement.length);
				}
			}		
		}
	}
	
	var listElement = function () {
		return function (node) {
			startLineMarkup(listMarkup.join('''') + '' '')(node);
		}
	}
	
	var imageMarkup = function () {
		return function (node) {
			var filepath = node.getAttribute("src");
			if (filepath.substr(0, 4) === "http") {
				wikiOutput.push(" +");
				wikiOutput.push(filepath);
			} else {
				var lastSlashPosition = filepath.lastIndexOf("/");
				var filename = filepath.substring(lastSlashPosition + 1);
			
				var structureFilepath = (filepath.substring(0, baseUrl.length) == baseUrl) ? filepath.substring(baseUrl.length) : filepath;
				lastSlashPosition =  structureFilepath.lastIndexOf("/");
				wikiOutput.push(" +");
				wikiOutput.push(structureFilepath.substring(0, lastSlashPosition + 1) + filename);
			}

			var style= node.getAttribute("style");
			if (style) {
				if (style[style.length-1] == ";") {
					style = style.substr(0, style.length-1);
				}
				wikiOutput.push("|style=" + style);
			}

			var align = node.getAttribute("align");
			if (align) {
				wikiOutput.push("|align=" + align.split(" ").join(""));
			}
			wikiOutput.push("+ ");

		}
	}
	
	var preMarkup = function () {
		return function (node) {
			var isCode = true;
			escapeText = false;

			var markup = "=";
			
			wikiOutput.push(markup);
			var startLength = wikiOutput.length;
			walkTheDOM (node.firstChild);
			var endLength = wikiOutput.length;
			// replace all new lines in text new-line and start of pre-markup
			for (var i = startLength; i < endLength; ++i) {
				wikiOutput [i] = wikiOutput [i].replace(new RegExp(newLine, "g"), newLine+markup);
			}
			wikiOutput.push(newLine);	
				
			if (isCode) {
				escapeText = true;
			}	
		}
	}
	
	var tableMarkup = function () {
		return function (node) {
			walkTheDOM (node.firstChild)
		}
	}
	
	var tableRowMarkup = function () {
		return function (node) {
			wikiOutput.push(newLine);
			walkTheDOM (node.firstChild)
		}
	}
	
	var tableCellMarkup = function (markup) {
		return function(node) {
			var cellMarkup = markup;
			if (node.getAttribute(''style'')) {
				var style = node.getAttribute(''style'');
				if (/text-align:\s*left/i.test(style)) {
					cellMarkup += ''{''
				}
				if (/text-align:\s*right/i.test(style)) {
					cellMarkup += ''}''
				}
				if (/text-align:\s*center/i.test(style)) {
					cellMarkup += ''|''
				}
			}
			wikiOutput.push(cellMarkup);
			walkTheDOM (node.firstChild);	
		}
	}
	
	var anchor = function() {
		return function(node) {
			if(node.getAttribute("href")) {
				var hostUrl = window.location.host;
				var anchorUrl = decodeURIComponent(node.getAttribute("href"));
				if (anchorUrl.substr(0, 4) !== "http") {
					anchorUrl = anchorUrl.split("?")[0];
				}
				var url = (anchorUrl.indexOf(hostUrl) == 0) ? anchorUrl.substr(hostUrl.length) : anchorUrl;
				if (url.indexOf(baseUrl) == 0) {
					url = url.substr(baseUrl.length);
					if (url.length == 0) {
						url = "\/";
					}
				}
				
				if (url.indexOf("mailto:") == 0) {
					url = url.substr("mailto:".length); 
				} else {
					if (url.substr(0, 4) !== "http") {
						/* Replace # with @ if it is the last word and if it is a non-external link */
						url = url.replace("#","@");
					}
				}

				wikiOutput.push("*");
				var startLength = wikiOutput.length;
				walkTheDOM(node.firstChild);
				wikiOutput.push(">");
				wikiOutput.push(url);
				wikiOutput.push("*");
				
				// if the url is the same as the caption, we dont need the caption
				if (wikiOutput.length == startLength + 4 && wikiOutput [startLength] == url) {
					delete wikiOutput [startLength];
					delete wikiOutput [startLength + 1];
				}
			}
			if (node.getAttribute("name")) {
				wikiOutput.push("@");
				wikiOutput.push(node.getAttribute("name"));
			}
		}
	}
	
	var spanMarkup = function() {
		return function(node) {
			if (node.className && node.className.indexOf("pierNonEditable") != -1) {
				escapeText = false;
				walkTheDOM (node.firstChild);
				escapeText = true;
			}
			else {
				walkTheDOM (node.firstChild);
			}
		}
	}

	var lineBreak = function() {
		return function(node) {
			wikiOutput.push(newLine);
		}
	}
	
	var handleText = function(node) {
		var escapeMarkup = function(text) {
			var initialiseMarkupEscapes = function () {
				var escapedMarkup = function (original) {
					var theEscapedMarkup = [];
					for (var i = 0; i < original.length; ++i) {
						theEscapedMarkup.push("\\");
						theEscapedMarkup.push(original[i]);
					}
					return theEscapedMarkup.join("");
				}
		
				for (var i = 0; i < surroundingMarkupArray.length; ++i) {
					markupEscapes.push({markup: surroundingMarkupArray[i], replacement: escapedMarkup (surroundingMarkupArray[i])})
				}	
				markupEscapes.push({markup: "*", replacement: "\\*"});
				markupEscapes.push({markup: "+", replacement: "\\+"});
			}
	
			if (markupEscapes.length == 0) {
				initialiseMarkupEscapes();
			}
			
			for (var i = 0; i < markupEscapes.length; ++i) {
				text = text.split(markupEscapes[i].markup).join(markupEscapes[i].replacement);		
			}
			return text;
		}	
	
		var text = node.nodeValue;

		// if the string starts with a newLine strip it.
		if (text.length && text [0] == newLine) {
			text = text.substr(1, text.length - 1); 
		}		
		
		// if the string ends with a newLine strip it.
		if (text.length && text [text.length - 1] == newLine) {
			text = text.substr(0, text.length - 1); 
		}
		
		if (escapeText) {
			text = escapeMarkup(text);
		}
		
		wikiOutput.push(text);
	}
	
	var elementToWikiMarkupMappingTable = {
		''b'': surroundingMarkup(''\"\"''),
		''strong'': surroundingMarkup(''\"\"''),
		''i'': surroundingMarkup("\''\''"),
		''em'': surroundingMarkup("\''\''"),
		''ins'': surroundingMarkup("__"),
		''u'': surroundingMarkup("__"),
		"del": surroundingMarkup("--"),
		''code'': surroundingMarkup("=="),
		''sub'': surroundingMarkup("@@"),
		''sup'': surroundingMarkup("^^"),
		"span": spanMarkup(),
		"div": startLineMarkup(''''),
		''a'': anchor(),
		''h1'': startLineMarkup (''!''),
		''h2'': startLineMarkup(''!!''), 
		''h3'': startLineMarkup(''!!!''),
		''h4'': startLineMarkup(''!!!!''), 
		''h5'': startLineMarkup(''!!!!!''), 
		''h6'': startLineMarkup(''!!!!!!''),
		''hr'': startLineMarkup(''_''),
		"br": lineBreak(),
		"p": paragraphMarkup(),
		"ul": listWalk(),
		"ol": listWalk(),	
		"dl": listWalk(),	
		''li'': listElement(),	
		''dt'': startLineMarkup('';''),
		''dd'': startLineMarkup('':''),
		''pre'': preMarkup(),
		''table'': tableMarkup(),
		''thead'': tableMarkup(),
		''tbody'': tableMarkup(),
		''tfoot'': tableMarkup(),
		''thead'': tableMarkup(),
		"tr": tableRowMarkup(),
		"td": tableCellMarkup("|"),
		"th": tableCellMarkup("|!"),		
		"img": imageMarkup()
	}

	// ensure we dont have lists inside other surrounding elements - Safari editing seems to cause this problem	
	var recurseChildNodesToEnsureOnlyInlineElements = function (node) {	
		if (node === null)
			return true;	

            if  (node.nodeType == nodeTypes.ELEMENT_NODE) {
			var nodeName = node.nodeName.toLowerCase();
			if (elementToWikiMarkupMappingTable.hasOwnProperty (nodeName)) {
				var functionToCall = elementToWikiMarkupMappingTable [nodeName];
				// arbitarily choose "b" as a surrounding element; but in fact we are checking that 
				// node is not any surrounding element markup
				if (functionToCall != elementToWikiMarkupMappingTable["b"] && functionToCall != anchor()) {
					return false;
				}
				else {
					if (! recurseChildNodesToEnsureOnlyInlineElements(node.firstChild)) {
						return false;
					}
				}
			}
		}
		return recurseChildNodesToEnsureOnlyInlineElements (node.nextSibling);
	}


    var nodeTypes = {
        ELEMENT_NODE: 1,
        ATTRIBUTE_NODE: 2,
        TEXT_NODE: 3,
        CDATA_SECTION_NODE: 4,
        ENTITY_REFERENCE_NODE: 5,
        ENTITY_NODE: 6,
        PROCESSING_INSTRUCTION_NODE: 7,
        COMMENT_NODE: 8,
        DOCUMENT_NODE: 9,
        DOCUMENT_TYPE_NODE: 10,
        DOCUMENT_FRAGMENT_NODE: 11,
        NOTATION_NODE: 12
    }
	
	// the recursive DOM walker
    var walkTheDOM = function (node) {
		if (node === null)
			return ;
			
		switch (node.nodeType) {
            case nodeTypes.ELEMENT_NODE:
			var nodeName = node.nodeName.toLowerCase();
			if (elementToWikiMarkupMappingTable.hasOwnProperty (nodeName)) {
				elementToWikiMarkupMappingTable [nodeName](node);
			}
			break;
                
            case nodeTypes.TEXT_NODE:
			handleText(node);
			break; 
                
            case nodeTypes.ATTRIBUTE_NODE:
            case nodeTypes.CDATA_SECTION_NODE:
            case nodeTypes.ENTITY_REFERENCE_NODE:
            case nodeTypes.ENTITY_NODE:
            case nodeTypes.PROCESSING_INSTRUCTION_NODE:
            case nodeTypes.COMMENT_NODE:
            case nodeTypes.DOCUMENT_NODE:
            case nodeTypes.DOCUMENT_TYPE_NODE:
            case nodeTypes.DOCUMENT_FRAGMENT_NODE:
            case nodeTypes.NOTATION_NODE:
                break;
			}

		walkTheDOM (node.nextSibling);
    }
    walkTheDOM (startNode.firstChild);
	
	return wikiOutput.join('''');
}'