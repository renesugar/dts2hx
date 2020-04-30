package three;
@:jsRequire("three", "CompressedTexture") extern class CompressedTexture extends Texture {
	function new(mipmaps:std.Array<ts.html.IImageData>, width:Float, height:Float, ?format:CompressedPixelFormat, ?type:TextureDataType, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?anisotropy:Float, ?encoding:TextureEncoding);
}