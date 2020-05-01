package ts.html;
typedef ConcatParams = {
	var algorithmId : ts.lib.IUint8Array;
	@:optional
	var hash : ts.AnyOf2<String, Algorithm>;
	var partyUInfo : ts.lib.IUint8Array;
	var partyVInfo : ts.lib.IUint8Array;
	@:optional
	var privateInfo : ts.lib.IUint8Array;
	@:optional
	var publicInfo : ts.lib.IUint8Array;
	var name : String;
};