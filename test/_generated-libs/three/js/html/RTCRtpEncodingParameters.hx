package js.html;
extern interface RTCRtpEncodingParameters extends RTCRtpCodingParameters {
	@:optional
	var active : Bool;
	@:optional
	var codecPayloadType : Float;
	@:optional
	var dtx : String;
	@:optional
	var maxBitrate : Float;
	@:optional
	var maxFramerate : Float;
	@:optional
	var priority : String;
	@:optional
	var ptime : Float;
	@:optional
	var scaleResolutionDownBy : Float;
}