accessing
tabWidget
  ^ tabWidget
    ifNil: [ 
      tabWidget := TBSAccordion new.
      tabWidget
        add: PRAdminListConfiguredInstances new title: 'Configured instances';
        add: PRAdminSetupCreateKernelFromTemplate new
          title: 'New from template';
        add: PRAdminSetupRecreateExportedKernel new
          title: 'Recreate an exported kernel';
        add: PRAdminSetupExistingKernel new
          title: 'Administer an existing kernel';
        add: PRAdminSetupAbout new title: 'About';
        yourself ]