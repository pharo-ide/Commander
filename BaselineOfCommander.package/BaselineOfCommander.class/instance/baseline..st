baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: #ClassAnnotation with: [ 
				spec 
					repository: 'github://dionisiydk/ClassAnnotation:v0.1.x';
					loads: 'Core' ];
			project: #ClassAnnotationTests copyFrom: #ClassAnnotation with: [
				spec loads: 'Tests'];
	
			package: #'Commander-Activators-ContextMenu' with: [
				spec requires: #(#'Commander-Core' ). ];
			package: #'Commander-Activators-DragAndDrop' with: [
				spec requires: #(#'Commander-Core' ). ];
			package: #'Commander-Activators-Shortcut' with: [
				spec requires: #(#'Commander-Core' ). ];
			package: #'Commander-Core' with: [spec requires: #(ClassAnnotation)];
			package: #'Commander-Core-Tests' with: [
				spec requires: #(#'Commander-Core' #ClassAnnotationTests). ].
		spec 
			group: 'Core' with: #(#'Commander-Core' #'Commander-Activators-Shortcut' #'Commander-Activators-ContextMenu' #'Commander-Activators-DragAndDrop' );
			group: 'Tests' with: #(#'Commander-Core-Tests' );
			group: 'default' with: #('Core' 'Tests')]