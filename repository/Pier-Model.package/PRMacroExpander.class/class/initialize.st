class initialization
initialize
	default := self new.
	default
		on: $c do: #(command label);	" current command "
		on: $r do: #(kernel root title);	" current root structure "
		on: $t do: #(structure title);		" current structure "
		on: $k do: #(kernel name)		" current kernel name "