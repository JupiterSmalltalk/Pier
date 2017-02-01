initialize
registerAt: dispatcherName administering: kernelPathPair
  | pierAdminApplication |
  pierAdminApplication := (WAAdmin
    register: self
    asApplicationAt: dispatcherName)
    preferenceAt: #'scriptGeneratorClass' put: JQScriptGenerator;
    preferenceAt: #'documentClass' put: PRAdminHtmlDocumentStoredHeadElements;
    preferenceAt: #'actionPhaseContinuationClass'
      put: PRAdminActionPhaseContinuation;
    preferenceAt: #'renderPhaseContinuationClass'
      put: PRAdminRenderPhaseContinuation;
    preferenceAt: #'rootDecorationClasses' put: #();
    yourself.	"preferenceAt: #useCookies put: false;"
  pierAdminApplication
    addLibrary: JQDeploymentLibrary;
    addLibrary: JQUiDeploymentLibrary;
    addLibrary: JQBaseTheme;
    addLibrary: SPHighlightedStyle.
  pierAdminApplication configuration
    addParent: NAFileUploadConfigurator instance.
  pierAdminApplication configuration addParent: PRAdminConfigurator instance.
  pierAdminApplication pierAdminKernelPathPair: kernelPathPair