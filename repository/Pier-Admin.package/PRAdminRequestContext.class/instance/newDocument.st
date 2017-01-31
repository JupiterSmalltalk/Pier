accessing-dynamic
newDocument
	^ document := (PRAdminHtmlDocumentSeparateBodyHeadElements
		on: self response stream codec: self codec)
		scriptGenerator: (self handler configuration at: #scriptGeneratorClass) new;
		yourself