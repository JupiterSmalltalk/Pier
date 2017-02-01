admin ui tasks
informAdminInstanceCreatedAt: adminInstancePath
  self
    informSuccess: [ :html | 
      html
        text: 'A Pier Admin instance has been created at: ';
        break;
        break.
      html anchor
        url: '/' , adminInstancePath;
        with: '/' , adminInstancePath.
      html
        break;
        break;
        text: 'Continue to login.' ]