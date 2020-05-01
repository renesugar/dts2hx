package ts.html;
/**
	This EncryptedMediaExtensions API interface the represents a set of keys that an associated HTMLMediaElement can use for decryption of media data during playback.
**/
typedef IMediaKeys = {
	function createSession(?sessionType:String):IMediaKeySession;
	function setServerCertificate(serverCertificate:ts.AnyOf2<ts.lib.IArrayBuffer, ts.lib.ArrayBufferView>):ts.lib.IPromise<Bool>;
};