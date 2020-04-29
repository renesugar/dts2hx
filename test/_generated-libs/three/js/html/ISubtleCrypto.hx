package js.html;
/**
	This Web Crypto API interface provides a number of low-level cryptographic functions. It is accessed via the Crypto.subtle properties available in a window context (via Window.crypto).
**/
extern typedef ISubtleCrypto = {
	function decrypt(algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<RsaOaepParams, haxe.extern.EitherType<AesCtrParams, haxe.extern.EitherType<AesCbcParams, haxe.extern.EitherType<AesCmacParams, haxe.extern.EitherType<AesGcmParams, AesCfbParams>>>>>>, key:ICryptoKey, data:haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.IDataView>>>>>>>>>>):js.lib.PromiseLike<js.lib.IArrayBuffer>;
	function deriveBits(algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<EcdhKeyDeriveParams, haxe.extern.EitherType<DhKeyDeriveParams, haxe.extern.EitherType<ConcatParams, haxe.extern.EitherType<HkdfCtrParams, Pbkdf2Params>>>>>, baseKey:ICryptoKey, length:Float):js.lib.PromiseLike<js.lib.IArrayBuffer>;
	function deriveKey(algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<EcdhKeyDeriveParams, haxe.extern.EitherType<DhKeyDeriveParams, haxe.extern.EitherType<ConcatParams, haxe.extern.EitherType<HkdfCtrParams, Pbkdf2Params>>>>>, baseKey:ICryptoKey, derivedKeyType:haxe.extern.EitherType<String, haxe.extern.EitherType<ConcatParams, haxe.extern.EitherType<HkdfCtrParams, haxe.extern.EitherType<Pbkdf2Params, haxe.extern.EitherType<AesDerivedKeyParams, HmacImportParams>>>>>, extractable:Bool, keyUsages:std.Array<String>):js.lib.PromiseLike<ICryptoKey>;
	function digest(algorithm:haxe.extern.EitherType<String, Algorithm>, data:haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.IDataView>>>>>>>>>>):js.lib.PromiseLike<js.lib.IArrayBuffer>;
	function encrypt(algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<RsaOaepParams, haxe.extern.EitherType<AesCtrParams, haxe.extern.EitherType<AesCbcParams, haxe.extern.EitherType<AesCmacParams, haxe.extern.EitherType<AesGcmParams, AesCfbParams>>>>>>, key:ICryptoKey, data:haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.IDataView>>>>>>>>>>):js.lib.PromiseLike<js.lib.IArrayBuffer>;
	@:overload(function(format:String, key:ICryptoKey):js.lib.PromiseLike<js.lib.IArrayBuffer> { })
	@:overload(function(format:String, key:ICryptoKey):js.lib.PromiseLike<haxe.extern.EitherType<js.lib.IArrayBuffer, JsonWebKey>> { })
	function exportKey(format:String, key:ICryptoKey):js.lib.PromiseLike<JsonWebKey>;
	@:overload(function(algorithm:haxe.extern.EitherType<RsaHashedKeyGenParams, haxe.extern.EitherType<EcKeyGenParams, DhKeyGenParams>>, extractable:Bool, keyUsages:std.Array<String>):js.lib.PromiseLike<ICryptoKeyPair> { })
	@:overload(function(algorithm:haxe.extern.EitherType<Pbkdf2Params, haxe.extern.EitherType<AesKeyGenParams, HmacKeyGenParams>>, extractable:Bool, keyUsages:std.Array<String>):js.lib.PromiseLike<ICryptoKey> { })
	function generateKey(algorithm:String, extractable:Bool, keyUsages:std.Array<String>):js.lib.PromiseLike<haxe.extern.EitherType<ICryptoKey, ICryptoKeyPair>>;
	@:overload(function(format:String, keyData:haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.IDataView>>>>>>>>>>, algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<HmacImportParams, haxe.extern.EitherType<RsaHashedImportParams, haxe.extern.EitherType<EcKeyImportParams, haxe.extern.EitherType<DhImportKeyParams, AesKeyAlgorithm>>>>>, extractable:Bool, keyUsages:std.Array<String>):js.lib.PromiseLike<ICryptoKey> { })
	@:overload(function(format:String, keyData:haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, haxe.extern.EitherType<js.lib.IArrayBuffer, haxe.extern.EitherType<js.lib.IDataView, JsonWebKey>>>>>>>>>>>, algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<HmacImportParams, haxe.extern.EitherType<RsaHashedImportParams, haxe.extern.EitherType<EcKeyImportParams, haxe.extern.EitherType<DhImportKeyParams, AesKeyAlgorithm>>>>>, extractable:Bool, keyUsages:std.Array<String>):js.lib.PromiseLike<ICryptoKey> { })
	function importKey(format:String, keyData:JsonWebKey, algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<HmacImportParams, haxe.extern.EitherType<RsaHashedImportParams, haxe.extern.EitherType<EcKeyImportParams, haxe.extern.EitherType<DhImportKeyParams, AesKeyAlgorithm>>>>>, extractable:Bool, keyUsages:std.Array<String>):js.lib.PromiseLike<ICryptoKey>;
	function sign(algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<AesCmacParams, haxe.extern.EitherType<RsaPssParams, EcdsaParams>>>, key:ICryptoKey, data:haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.IDataView>>>>>>>>>>):js.lib.PromiseLike<js.lib.IArrayBuffer>;
	function unwrapKey(format:String, wrappedKey:haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.IDataView>>>>>>>>>>, unwrappingKey:ICryptoKey, unwrapAlgorithm:haxe.extern.EitherType<String, Algorithm>, unwrappedKeyAlgorithm:haxe.extern.EitherType<String, Algorithm>, extractable:Bool, keyUsages:std.Array<String>):js.lib.PromiseLike<ICryptoKey>;
	function verify(algorithm:haxe.extern.EitherType<String, haxe.extern.EitherType<AesCmacParams, haxe.extern.EitherType<RsaPssParams, EcdsaParams>>>, key:ICryptoKey, signature:haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.IDataView>>>>>>>>>>, data:haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.IDataView>>>>>>>>>>):js.lib.PromiseLike<Bool>;
	function wrapKey(format:String, key:ICryptoKey, wrappingKey:ICryptoKey, wrapAlgorithm:haxe.extern.EitherType<String, Algorithm>):js.lib.PromiseLike<js.lib.IArrayBuffer>;
};