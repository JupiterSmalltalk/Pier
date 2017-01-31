components
headerPage
	^ headerPage ifNil: [
		headerPage := (PRPage named: 'header')
		contents:
'{{{<div class="column span-24 last header">
	<div class="menu">}}}+/system/components/menu|menu+{{{</div>
</div>}}}';
		yourself ]