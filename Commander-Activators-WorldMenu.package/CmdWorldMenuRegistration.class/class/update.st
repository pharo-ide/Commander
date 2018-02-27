world menu
update
	<script>
	[World detachKeymapCategory: self shortcutsCategory targetting: self] ifError: [ 
		"we ensure no existing category to force update" ].
	KMPragmaKeymapBuilder uniqueInstance reset.
	World attachKeymapCategory: self shortcutsCategory targetting: self