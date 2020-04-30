package node.crypto;
extern typedef Cipher = {
	@:overload(function(data:String, input_encoding:String):global.IBuffer { })
	@:overload(function(data:haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<ts.lib.IUint8ClampedArray, haxe.extern.EitherType<ts.lib.IUint16Array, haxe.extern.EitherType<ts.lib.IUint32Array, haxe.extern.EitherType<ts.lib.IInt8Array, haxe.extern.EitherType<ts.lib.IInt16Array, haxe.extern.EitherType<ts.lib.IInt32Array, haxe.extern.EitherType<ts.lib.IFloat32Array, haxe.extern.EitherType<ts.lib.IFloat64Array, ts.lib.IDataView>>>>>>>>>>, input_encoding:Null<Any>, output_encoding:String):String { })
	@:overload(function(data:String, input_encoding:Null<String>, output_encoding:String):String { })
	function update(data:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<ts.lib.IUint8ClampedArray, haxe.extern.EitherType<ts.lib.IUint16Array, haxe.extern.EitherType<ts.lib.IUint32Array, haxe.extern.EitherType<ts.lib.IInt8Array, haxe.extern.EitherType<ts.lib.IInt16Array, haxe.extern.EitherType<ts.lib.IInt32Array, haxe.extern.EitherType<ts.lib.IFloat32Array, haxe.extern.EitherType<ts.lib.IFloat64Array, ts.lib.IDataView>>>>>>>>>>>):global.IBuffer;
	@:native("final")
	@:overload(function(output_encoding:String):String { })
	function final_():global.IBuffer;
	function setAutoPadding(?auto_padding:Bool):Cipher;
	var readable : Bool;
	function read(?size:Float):haxe.extern.EitherType<String, global.IBuffer>;
	function setEncoding(encoding:String):Cipher;
	function pause():Cipher;
	function resume():Cipher;
	function isPaused():Bool;
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	function unpipe(?destination:global.nodejs.WritableStream):Cipher;
	@:overload(function(chunk:global.IBuffer):Void { })
	function unshift(chunk:String):Void;
	function wrap(oldStream:global.nodejs.ReadableStream):Cipher;
	function addListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Cipher;
	function on(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Cipher;
	function once(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Cipher;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Cipher;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Cipher;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):Cipher;
	function setMaxListeners(n:Float):Cipher;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
	function prependListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Cipher;
	function prependOnceListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Cipher;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	var writable : Bool;
	@:overload(function(str:String, ?encoding:String, ?cb:(?err:ts.lib.IError) -> Void):Bool { })
	function write(buffer:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, ts.lib.IUint8Array>>, ?cb:(?err:ts.lib.IError) -> Void):Bool;
	@:overload(function(data:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, ts.lib.IUint8Array>>, ?cb:() -> Void):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
};