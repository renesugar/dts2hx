package node.stream;
typedef WritableOptions = {
	@:optional
	var highWaterMark : Float;
	@:optional
	var decodeStrings : Bool;
	@:optional
	var objectMode : Bool;
	@:optional
	function write(chunk:Dynamic, encoding:String, callback:(?error:ts.lib.IError) -> Void):Void;
	@:optional
	function writev(chunks:std.Array<{ var chunk : Dynamic; var encoding : String; }>, callback:(?error:ts.lib.IError) -> Void):Void;
	@:optional
	function destroy(error:Null<ts.lib.IError>, callback:(error:Null<ts.lib.IError>) -> Void):Void;
	@:native("final")
	@:optional
	function final_(callback:(?error:ts.lib.IError) -> Void):Void;
};