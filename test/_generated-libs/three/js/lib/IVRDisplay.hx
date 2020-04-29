package js.lib;
/**
	This WebVR API interface represents any VR device supported by this API. It includes generic information such as device IDs and descriptions, as well as methods for starting to present a VR scene, retrieving eye parameters and display capabilities, and other important functionality.
**/
extern typedef IVRDisplay = {
	final capabilities : js.html.IVRDisplayCapabilities;
	var depthFar : Float;
	var depthNear : Float;
	final displayId : Float;
	final displayName : String;
	final isConnected : Bool;
	final isPresenting : Bool;
	final stageParameters : Null<js.html.VRStageParameters>;
	function cancelAnimationFrame(handle:Float):Void;
	function exitPresent():IPromise<Void>;
	function getEyeParameters(whichEye:String):js.html.IVREyeParameters;
	function getFrameData(frameData:js.html.IVRFrameData):Bool;
	function getLayers():std.Array<js.html.VRLayer>;
	function getPose():js.html.IVRPose;
	function requestAnimationFrame(callback:js.html.FrameRequestCallback):Float;
	@:overload(function(layers:Iterable<js.html.VRLayer>):IPromise<Void> { })
	function requestPresent(layers:std.Array<js.html.VRLayer>):IPromise<Void>;
	function resetPose():Void;
	function submitFrame(?pose:js.html.IVRPose):Void;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	function addEventListener(type:String, listener:Null<haxe.extern.EitherType<js.html.EventListener, js.html.EventListenerObject>>, ?options:haxe.extern.EitherType<Bool, js.html.AddEventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:js.html.IEvent):Bool;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	function removeEventListener(type:String, callback:Null<haxe.extern.EitherType<js.html.EventListener, js.html.EventListenerObject>>, ?options:haxe.extern.EitherType<Bool, js.html.EventListenerOptions>):Void;
};