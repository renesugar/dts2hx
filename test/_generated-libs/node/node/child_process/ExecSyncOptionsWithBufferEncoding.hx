package node.child_process;
typedef ExecSyncOptionsWithBufferEncoding = {
	var encoding : String;
	@:optional
	var input : ts.AnyOf3<String, global.Buffer, js.lib.Uint8Array>;
	@:optional
	var stdio : ts.AnyOf2<String, Array<Null<ts.AnyOf3<Float, String, node.stream.Stream>>>>;
	@:optional
	var shell : String;
	@:optional
	var killSignal : ts.AnyOf2<String, Float>;
	@:optional
	var maxBuffer : Float;
	@:optional
	var windowsHide : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var uid : Float;
	@:optional
	var gid : Float;
	@:optional
	var cwd : String;
	@:optional
	var env : global.nodejs.ProcessEnv;
};