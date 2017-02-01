accessing
initializeComponents
  components := Dictionary new
    at: #'createKernel'
      put: (selectedComponent := PRAdminSetupCreateKernelFromTemplate new);
    at: #'recreateKernel' put: PRAdminSetupRecreateExportedKernel new;
    at: #'admin' put: PRAdminSetupExistingKernel new;
    at: #'about' put: PRAdminSetupAbout new;
    yourself