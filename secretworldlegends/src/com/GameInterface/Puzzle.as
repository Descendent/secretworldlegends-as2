import com.Utils.Signal;
intrinsic class com.GameInterface.Puzzle
{
	static public var SignalMessage : Signal;

	static public function Close() : Void;

	static public function SendMessageToServer(msg:String) : Void;

}