magritte descriptions
passwordDescription
  <magritteDescription>
  ^ MAPasswordDescription new
    parameterName: 'password';
    accessor: #'password';
    componentClass: TBSVerifiedPasswordComponent;
    label: 'Password';
    priority: 200;
    placeholder: 'admin user password';
    beRequired;
    yourself