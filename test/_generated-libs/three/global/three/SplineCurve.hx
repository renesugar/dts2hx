package global.three;

@:native("THREE.SplineCurve") extern class SplineCurve extends Curve<Vector2> {
	function new(?points:Array<Vector2>);
	var points : Array<Vector2>;
	static var prototype : SplineCurve;
}