import com.Utils.Signal;
intrinsic class com.GameInterface.ComputerPuzzleIF
{
	static public var SignalQuestionsUpdated : Signal;
	static public var SignalTextUpdated : Signal;
	static public var SignalClose : Signal;

	static public function GetText() : String;

	static public function GetQuestions() : Array;

	static public function AcceptPlayerInput(inputString:String) : Boolean;

	static public function Close() : Void;

}