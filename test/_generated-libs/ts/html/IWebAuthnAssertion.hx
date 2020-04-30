package ts.html;
extern typedef IWebAuthnAssertion = {
	final authenticatorData : ts.lib.IArrayBuffer;
	final clientData : ts.lib.IArrayBuffer;
	final credential : IScopedCredential;
	final signature : ts.lib.IArrayBuffer;
};