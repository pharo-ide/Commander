*Commander-Activators-ContextMenu
buildContextMenu: aMenu

	contents do: [ :each | each buildContextMenu: aMenu ]