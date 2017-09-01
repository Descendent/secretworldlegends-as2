import com.Utils.Signal;
intrinsic class com.GameInterface.LogBase
{
	static public var SignalMsg : Signal;

	static public function SetMsgForward(value:Boolean) : Void;

	static public function GetMsgForward() : Boolean;

	static public function GetMsgCache() : Array;

	static public function Error(category:String, message:Object) : Void;

}