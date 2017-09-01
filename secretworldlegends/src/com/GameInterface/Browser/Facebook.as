import com.Utils.Signal;
intrinsic class com.GameInterface.Browser.Facebook
{
	static public var SignalReceivedFriendsList : Signal;
	static public var SignalAskToSignUp : Signal;
	static public var SignalInterfaceUpdated : Signal;

	static public function IsConnectedToFacebook() : Boolean;

	static public function IsInterfaceUpdateReceived() : Boolean;

	static public function GetFriendsByDimensionId(dimensionId:Number) : Array;

}