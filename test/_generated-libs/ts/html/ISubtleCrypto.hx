package ts.html;
/**
	This Web Crypto API interface provides a number of low-level cryptographic functions. It is accessed via the Crypto.subtle properties available in a window context (via Window.crypto).
**/
typedef ISubtleCrypto = {
	function decrypt(algorithm:ts.AnyOf7<String, RsaOaepParams, AesCtrParams, AesCbcParams, AesCmacParams, AesGcmParams, AesCfbParams>, key:ICryptoKey, data:ts.AnyOf11<ts.lib.IArrayBuffer, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IUint8Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IUint8ClampedArray, ts.lib.IDataView>):ts.lib.PromiseLike<ts.lib.IArrayBuffer>;
	function deriveBits(algorithm:ts.AnyOf6<String, EcdhKeyDeriveParams, DhKeyDeriveParams, ConcatParams, HkdfCtrParams, Pbkdf2Params>, baseKey:ICryptoKey, length:Float):ts.lib.PromiseLike<ts.lib.IArrayBuffer>;
	function deriveKey(algorithm:ts.AnyOf6<String, EcdhKeyDeriveParams, DhKeyDeriveParams, ConcatParams, HkdfCtrParams, Pbkdf2Params>, baseKey:ICryptoKey, derivedKeyType:ts.AnyOf6<String, ConcatParams, HkdfCtrParams, Pbkdf2Params, AesDerivedKeyParams, HmacImportParams>, extractable:Bool, keyUsages:std.Array<String>):ts.lib.PromiseLike<ICryptoKey>;
	function digest(algorithm:ts.AnyOf2<String, Algorithm>, data:ts.AnyOf11<ts.lib.IArrayBuffer, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IUint8Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IUint8ClampedArray, ts.lib.IDataView>):ts.lib.PromiseLike<ts.lib.IArrayBuffer>;
	function encrypt(algorithm:ts.AnyOf7<String, RsaOaepParams, AesCtrParams, AesCbcParams, AesCmacParams, AesGcmParams, AesCfbParams>, key:ICryptoKey, data:ts.AnyOf11<ts.lib.IArrayBuffer, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IUint8Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IUint8ClampedArray, ts.lib.IDataView>):ts.lib.PromiseLike<ts.lib.IArrayBuffer>;
	@:overload(function(format:String, key:ICryptoKey):ts.lib.PromiseLike<ts.lib.IArrayBuffer> { })
	@:overload(function(format:String, key:ICryptoKey):ts.lib.PromiseLike<ts.AnyOf2<ts.lib.IArrayBuffer, JsonWebKey>> { })
	function exportKey(format:String, key:ICryptoKey):ts.lib.PromiseLike<JsonWebKey>;
	@:overload(function(algorithm:ts.AnyOf3<RsaHashedKeyGenParams, EcKeyGenParams, DhKeyGenParams>, extractable:Bool, keyUsages:std.Array<String>):ts.lib.PromiseLike<ICryptoKeyPair> { })
	@:overload(function(algorithm:ts.AnyOf3<Pbkdf2Params, AesKeyGenParams, HmacKeyGenParams>, extractable:Bool, keyUsages:std.Array<String>):ts.lib.PromiseLike<ICryptoKey> { })
	function generateKey(algorithm:String, extractable:Bool, keyUsages:std.Array<String>):ts.lib.PromiseLike<ts.AnyOf2<ICryptoKey, ICryptoKeyPair>>;
	@:overload(function(format:String, keyData:ts.AnyOf11<ts.lib.IArrayBuffer, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IUint8Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IUint8ClampedArray, ts.lib.IDataView>, algorithm:ts.AnyOf6<String, HmacImportParams, RsaHashedImportParams, EcKeyImportParams, DhImportKeyParams, AesKeyAlgorithm>, extractable:Bool, keyUsages:std.Array<String>):ts.lib.PromiseLike<ICryptoKey> { })
	@:overload(function(format:String, keyData:ts.AnyOf12<ts.lib.IArrayBuffer, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IUint8Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IUint8ClampedArray, ts.lib.IDataView, JsonWebKey>, algorithm:ts.AnyOf6<String, HmacImportParams, RsaHashedImportParams, EcKeyImportParams, DhImportKeyParams, AesKeyAlgorithm>, extractable:Bool, keyUsages:std.Array<String>):ts.lib.PromiseLike<ICryptoKey> { })
	function importKey(format:String, keyData:JsonWebKey, algorithm:ts.AnyOf6<String, HmacImportParams, RsaHashedImportParams, EcKeyImportParams, DhImportKeyParams, AesKeyAlgorithm>, extractable:Bool, keyUsages:std.Array<String>):ts.lib.PromiseLike<ICryptoKey>;
	function sign(algorithm:ts.AnyOf4<String, AesCmacParams, RsaPssParams, EcdsaParams>, key:ICryptoKey, data:ts.AnyOf11<ts.lib.IArrayBuffer, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IUint8Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IUint8ClampedArray, ts.lib.IDataView>):ts.lib.PromiseLike<ts.lib.IArrayBuffer>;
	function unwrapKey(format:String, wrappedKey:ts.AnyOf11<ts.lib.IArrayBuffer, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IUint8Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IUint8ClampedArray, ts.lib.IDataView>, unwrappingKey:ICryptoKey, unwrapAlgorithm:ts.AnyOf2<String, Algorithm>, unwrappedKeyAlgorithm:ts.AnyOf2<String, Algorithm>, extractable:Bool, keyUsages:std.Array<String>):ts.lib.PromiseLike<ICryptoKey>;
	function verify(algorithm:ts.AnyOf4<String, AesCmacParams, RsaPssParams, EcdsaParams>, key:ICryptoKey, signature:ts.AnyOf11<ts.lib.IArrayBuffer, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IUint8Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IUint8ClampedArray, ts.lib.IDataView>, data:ts.AnyOf11<ts.lib.IArrayBuffer, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IUint8Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IUint8ClampedArray, ts.lib.IDataView>):ts.lib.PromiseLike<Bool>;
	function wrapKey(format:String, key:ICryptoKey, wrappingKey:ICryptoKey, wrapAlgorithm:ts.AnyOf2<String, Algorithm>):ts.lib.PromiseLike<ts.lib.IArrayBuffer>;
};