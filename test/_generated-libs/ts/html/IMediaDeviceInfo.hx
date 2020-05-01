package ts.html;
/**
	The MediaDevicesInfo interface contains information that describes a single media input or output device.
**/
typedef IMediaDeviceInfo = {
	final deviceId : String;
	final groupId : String;
	final kind : String;
	final label : String;
	function toJSON():Dynamic;
};