package ts.lib;
/**
	Tuple type implementation generated by dts2hx
**/
@:forward @:forwardStatics extern abstract Tuple2<T0, T1>(std.Array<Any>) from std.Array<Any> to std.Array<Any> {
	public inline function new(element0:T0, element1:T1) {
		this = [element0, element1];
	}
	public var element0(get, set) : T0;
	inline function get_element0():T0 return cast this[0];
	inline function set_element0(v:T0):T0 return cast this[0] = cast v;
	public var element1(get, set) : T1;
	inline function get_element1():T1 return cast this[1];
	inline function set_element1(v:T1):T1 return cast this[1] = cast v;
}