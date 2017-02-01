description
describeOn: config
  (config list: #'kernel')
    group: #'pier';
    options: [ PRKernel instances ].
  config
    at: #'rootClass' put: PRPierFrame;
    at: #'useCookies' put: true