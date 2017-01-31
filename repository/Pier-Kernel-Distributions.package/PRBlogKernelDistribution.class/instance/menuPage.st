components
menuPage
	^ menuWidget ifNil: 
		[ menuWidget := (PRPage named: 'menu')
			contents:
'- *Home>/*
- *Blog>/blog*';
			yourself ]