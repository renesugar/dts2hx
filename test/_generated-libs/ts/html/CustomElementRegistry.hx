package ts.html;
@:native("CustomElementRegistry") extern class CustomElementRegistry {
	function new();
	function define(name:String, constructor:ts.lib.IFunction, ?options:ElementDefinitionOptions):Void;
	function get(name:String):Any;
	function upgrade(root:INode):Void;
	function whenDefined(name:String):ts.lib.IPromise<Void>;
	static var prototype : ICustomElementRegistry;
}