initialize-release
register
	(WAAdmin register: self asApplicationAt: 'wysiwygtest')
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		preferenceAt: #scriptGeneratorClass put: JQScriptGenerator.