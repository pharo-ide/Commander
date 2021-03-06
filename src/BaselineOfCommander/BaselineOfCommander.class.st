Class {
	#name : #BaselineOfCommander,
	#superclass : #BaselineOf,
	#category : #BaselineOfCommander
}

{ #category : #baselines }
BaselineOfCommander >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: #ClassAnnotation with: [ 
				spec 
					repository: 'github://pharo-ide/ClassAnnotation:v0.4.0/src';
					loads: 'Core' ];
			project: #ClassAnnotationTests copyFrom: #ClassAnnotation with: [
				spec loads: 'Tests'];
			package: #'Commander-Core' with: [spec requires: #(ClassAnnotation)];
			package: #'Commander-Core-Tests' with: [
				spec requires: #(#'Commander-Core' #ClassAnnotationTests)];
	
			package: #'Commander-Activators-Shortcut' with: [
				spec requires: #(#'Commander-Core' )];
			package: #'Commander-Activators-ContextMenu' with: [
				spec requires: #(#'Commander-Core' #'Commander-Activators-Shortcut' )];
			package: #'Commander-Activators-DragAndDrop' with: [
				spec requires: #(#'Commander-Core' )];

			package: #'Commander-Activators-WorldMenu' with: [
				spec requires: #(#'Commander-Activators-Shortcut' #'Commander-Activators-ContextMenu' )];
			package: #'Commander-Activators-Mouse' with: [
				spec requires: #(#'Commander-Core' )];
			package: #'Commander-Activators-TextView' with: [
				spec requires: #(#'Commander-Activators-ContextMenu' #'Commander-Activators-Mouse')];
			
			package: #'Commander-SpecSupport';
			package: #'Commander-Spec2-Compatibility';
			package: #'Commander-Examples' with: [
				spec requires: #(#'Commander-SpecSupport')].
		spec 
			group: 'Core' with: #(#'Commander-Core');
			group: 'AllActivators' with: #(#'Commander-Activators-Shortcut' #'Commander-Activators-ContextMenu' #'Commander-Activators-DragAndDrop' #'Commander-Activators-WorldMenu' #'Commander-Activators-TextView' #'Commander-Activators-Mouse');
			group: 'Tests' with: #(#'Commander-Core-Tests' );
			group: 'default' with: #('Core' 'AllActivators' 'Tests')];
			group: 'withSpec2Compatibility' with: #('default' 'Commander-Spec2-Compatibility').
		
		spec for: #'pharo6.x' do: [    
        self spec70: spec.        
        spec
            package: 'Commander-SpecSupport' with: [ 
                spec requires: #('Spec70Compatibility') ].
			spec group: 'default' with: #('Core' 'AllActivators' #'Commander-SpecSupport' #'Commander-Examples' 'Tests')] 

]

{ #category : #baselines }
BaselineOfCommander >> spec70: spec [
    "for pharo6 compatibility"
    spec
        baseline: 'Spec70Compatibility' 
        with: [ spec repository: 'github://pharo-contributions/Spec70Compatibility:v1.0.0/src' ]
]
