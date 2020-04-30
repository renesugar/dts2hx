package ts.html;
@:native("MSFIDOCredentialAssertion") extern class MSFIDOCredentialAssertion {
	function new();
	final algorithm : haxe.extern.EitherType<String, Algorithm>;
	final attestation : Any;
	final publicKey : String;
	final transportHints : std.Array<String>;
	final id : String;
	final type : String;
	static var prototype : IMSFIDOCredentialAssertion;
}