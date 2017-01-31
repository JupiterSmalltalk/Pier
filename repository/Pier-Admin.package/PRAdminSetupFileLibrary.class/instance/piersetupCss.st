uploaded
piersetupCss
	^ '
.setupAdminOverlayBase {
	z-index:8; 
	background:white; 
	opacity:0.9;
}

.setupAdminOverlayMessage {
	margin-top: 25px;
}

.setupAdminPierTitle img {
	position: relative;
	top: 8px;
}

#adminSetupContent select,  #adminSetupContent input[type="text"] {
	width: 360px;
}

a.thumbnail.selected {
  border-color: #CC3D00;
  -webkit-box-shadow: 0 1px 4px rgba(214, 54, 0, 0.25);
  -moz-box-shadow: 0 1px 4px rgba(214, 54, 0, 0.25);
  box-shadow: 0 1px 4px rgba(215, 54, 0, 0.25);
}

.thumbnailChooser {
	margin-top: 10px;
	display: block;
}
'