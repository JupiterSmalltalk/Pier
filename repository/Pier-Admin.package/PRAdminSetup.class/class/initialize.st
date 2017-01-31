initialization
initialize
  | piersetup |
  piersetup := (WAAdmin register: self asApplicationAt: 'piersetup')
    preferenceAt: #'scriptGeneratorClass' put: JQScriptGenerator;
    preferenceAt: #'rootDecorationClasses' put: #();
    yourself.	"preferenceAt: #useCookies put: false;"
  piersetup addLibrary: JQDeploymentLibrary