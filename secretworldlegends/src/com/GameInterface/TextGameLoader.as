import com.GameInterface.TextGame;
import com.Utils.Signal;
intrinsic class com.GameInterface.TextGameLoader
{
	static public var m_CurrentGame : TextGame;
	static public var SignalTextGameLoaded : Signal;

	static public function LoadTextGame(gameName:String);

}