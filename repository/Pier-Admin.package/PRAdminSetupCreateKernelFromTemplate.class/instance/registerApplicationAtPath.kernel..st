tasks
registerApplicationAtPath: path kernel: kernel 
	| app |
	app := PRPierFrame registerAsApplication: path kernel: kernel.
	"have to include this lot if you want users to have a rich editing experience in the comments and 
	be able to upload comment files"
	app
		preferenceAt: #scriptGeneratorClass put: JQScriptGenerator;
		preferenceAt: #rootDecorationClasses put: #();
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: JQBaseTheme;
		addLibrary: 	SPHighlightedStyle.

	app
		configuration addParent: NAFileUploadConfigurator instance