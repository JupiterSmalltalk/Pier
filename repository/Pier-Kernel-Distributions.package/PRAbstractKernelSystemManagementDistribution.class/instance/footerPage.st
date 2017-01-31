components
footerPage
	^ footerPage ifNil: [
		footerPage := (PRPage named: 'footer')
		contents:
'{{{<div class="footer column span-24 last">
	<div class="column span-18"></div>
	<div class="column span-6 last">}}}+/system/components/poweredby+{{{</div>
</div>}}}';
		yourself ]