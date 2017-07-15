baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			package: #'Commander-Activators-ContextMenu' with: [
				spec requires: #(#'Commander-Core' ). ];
			package: #'Commander-Activators-DragAndDrop' with: [
				spec requires: #(#'Commander-Core' ). ];
			package: #'Commander-Activators-Shortcut' with: [
				spec requires: #(#'Commander-Core' ). ];
			package: #'Commander-Core';
			package: #'Commander-Core-Tests' with: [
				spec requires: #(#'Commander-Core' #'Commander-Activators-ContextMenu' #'Commander-Activators-ContextMenu' ). ].
		spec 
			group: 'Core' with: #(#'Commander-Core' #'Commander-Activators-Shortcut' #'Commander-Activators-ContextMenu' #'Commander-Activators-DragAndDrop' );
			group: 'Tests' with: #(#'Commander-Core-Tests' );
			group: 'default' with: #('Core' 'Tests')]