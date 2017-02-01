tasks
defineAdminUserForDistribution: selectedDistribution
  | adminUserComponent |
  adminUserComponent := PRAdminSetupDefineAdminUser new asComponent
    addDecoration:
        ((TBSMagritteFormDecoration
            buttons: (Array with: #'save' -> 'Register admin user'))
            formCss: 'form-horizontal';
            legend: 'Create an admin user';
            yourself);
    twbsAddInfoMessage: [ :r | 
          r
            text: 'You have selected: ';
            strong: selectedDistribution label ];
    yourself.
  ^ self call: adminUserComponent