package ts.html;
typedef PaymentMethodData = {
	@:optional
	var data : Dynamic;
	var supportedMethods : ts.AnyOf2<String, std.Array<String>>;
};