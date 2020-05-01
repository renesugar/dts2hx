package ts.html;
@:native("KeyframeEffect") extern class KeyframeEffect {
	@:overload(function(source:IKeyframeEffect):IKeyframeEffect { })
	function new(target:Null<IElement>, keyframes:Null<ts.AnyOf2<std.Array<Keyframe>, PropertyIndexedKeyframes>>, ?options:ts.AnyOf2<Float, KeyframeEffectOptions>);
	var composite : String;
	var iterationComposite : String;
	var target : Null<IElement>;
	function getKeyframes():std.Array<ComputedKeyframe>;
	function setKeyframes(keyframes:Null<ts.AnyOf2<std.Array<Keyframe>, PropertyIndexedKeyframes>>):Void;
	function getComputedTiming():ComputedEffectTiming;
	function getTiming():EffectTiming;
	function updateTiming(?timing:OptionalEffectTiming):Void;
	static var prototype : IKeyframeEffect;
}