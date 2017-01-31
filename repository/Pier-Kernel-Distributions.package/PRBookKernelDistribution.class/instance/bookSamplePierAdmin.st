components
bookSamplePierAdmin
	^ bookSamplePierAdmin ifNil: [
		| pierClassReference |
		bookSamplePierAdmin := (BOBook named: 'pier-admin-book')
			title: 'Pier Admin Documentation';
			localEnvironment: self bookTemplate;
			contents: 
'!+value:structure|title+
{{{<div class="table-of-contents">}}}*value:book.contents|target=/pier-admin-book*{{{</div>}}}
{{{<div class="table-of-figures">}}}*value:book.figures|target=/pier-admin-book*{{{</div>}}}';
			addChild: (self bookEntryPierAdminOverview
				addChild: self bookEntryPierAdminMotivation;
				addChild: self bookEntryPierAdminFeatures;
				addChild: self bookEntryPierAdminInstallation;
				addChild: self bookEntryWysiwygEditorFeatures;
				addChild: self bookEntryPierAdminUIBugsAndOmissions;
				addChild: self bookEntryAcknowledgement;
				addChild: self bookEntryWikiSyntax;
				yourself);
			addChild: (self bookEntryPierAdminUnderTheHood
				addChild: self bookEntryPierAdminInsidePackages;
				addChild: self bookEntryPierAdminInsideLivePreview;
				addChild: self bookEntryPierAdminjQueryGotchas;
				addChild: self bookEntryPierAdminInsideAjaxUpdates;
				addChild: self bookEntryPierAdminKeyClasses;
				addChild: self bookEntryPierAdminInsideTheWysiwygEditor;
				yourself);
			addChild: (self bookEntryPierBriefIntroduction
				addChild: self bookEntryStructureNavigating;
				addChild: self bookEntryExportingAKernel;
				addChild: self bookEntryPermissioning;
				addChild: (pierClassReference := self bookEntryClassReference
					addChild: self bookEntryPierPRDocument;
					addChild: self bookEntryPierPRStructure;
					addChild: self bookEntryPierPRPierFrame;
					addChild: self bookEntryPierPRWidget;
					addChild: self bookEntryPierPRCommand;
					addChild: self bookEntryPierPRContentsWidget;
					addChild: self bookEntryPierPRDefaultView;
					yourself);
				yourself);
			yourself.
		
		self addClassCommentsSubTreeTo: pierClassReference classes: self interestingClassesWithComments.
		bookSamplePierAdmin ]