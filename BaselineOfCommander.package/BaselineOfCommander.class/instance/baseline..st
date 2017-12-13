baselines
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: #ClassAnnotation with: [ 
				spec 
					repository: 'github://dionisiydk/ClassAnnotation:v0.2.x';
					loads: 'Core' ];
			project: #ClassAnnotationTests copyFrom: #ClassAnnotation with: [
				spec loads: 'Tests'];
	
			package: #'Commander-Activators-ContextMenu' with: [
				spec requires: #(#'Commander-Core' )];
			package: #'Commander-Activators-DragAndDrop' with: [
				spec requires: #(#'Commander-Core' )];
			package: #'Commander-Activators-Shortcut' with: [
				spec requires: #(#'Commander-Core' )];
			package: #'Commander-Core' with: [spec requires: #(ClassAnnotation)];
			package: #'Commander-Core-Tests' with: [
				spec requires: #(#'Commander-Core' #ClassAnnotationTests)];
			package: #'Commander-SpecSupport';
			package: #'Commander-Examples' with: [
				spec requires: #(#'Commander-SpecSupport')].
		spec 
			group: 'Core' with: #(#'Commander-Core');
			group: 'AllActivators' with: #(#'Commander-Activators-Shortcut' #'Commander-Activators-ContextMenu' #'Commander-Activators-DragAndDrop' );
			group: 'Tests' with: #(#'Commander-Core-Tests' );
			group: 'default' with: #('Core' 'AllActivators' 'Tests' 'Commander-Examples')]