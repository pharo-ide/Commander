I implement registration of world menu and global shortucts using standard system pragmas: 

- <worldMenu>
- <keymap>

In addition to support shortucts I register special #CmdWorldShortcutsCategory in current World instance. During shortcuts collection I use this category to add keymaps into the given builder.  

Registration is done during class initialization. Or you can reevaluate it with:

	CmdWorldMenuRegistration attachShorctutsToWorld 