package three;
@:jsRequire("three", "Uint8ClampedAttribute") extern class Uint8ClampedAttribute extends BufferAttribute {
	function new(array:Dynamic, itemSize:Float);
	function clone():Uint8ClampedAttribute;
	function copy(source:BufferAttribute):Uint8ClampedAttribute;
}