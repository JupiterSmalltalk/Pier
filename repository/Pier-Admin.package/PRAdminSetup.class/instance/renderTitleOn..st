rendering
renderTitleOn: html
  html
    tbsRow: [ 
      html heading
        level1;
        class: 'setupAdminPierTitle';
        with: [ 
              html text: 'Welcome to '.
              html image url: PRAdminFileLibrary / #'pierlogo75x35Png'.
              html text: ' admin setup' ] ]