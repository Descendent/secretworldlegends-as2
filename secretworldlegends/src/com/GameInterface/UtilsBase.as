import com.Utils.Signal;
import com.Utils.ID32;
intrinsic class com.GameInterface.UtilsBase
{
	static public var SignalSplashScreenActivated : Signal;
	static public var SignalLoginPrefsLoaded : Signal;
	static public var SignalLoginPrefsPostUnload : Signal;
	static public var SignalCharacterPrefsLoaded : Signal;
	static public var SignalCharacterPrefsPreUnload : Signal;
	static public var SignalCharacterPrefsPostUnload : Signal;
	static public var SignalObjectUnderMouseChanged : Signal;
	static public var SignalTradeStarted : Signal;
	static public var SignalTradeEnded : Signal;
	static public var SignalPartnerAccepted : Signal;
	static public var SignalPartnerNoLongerAccepted : Signal;
	static public var SignalClientCharAccepted : Signal;
	static public var SignalClientCharNoLongerAccepted : Signal;
	static public var SignalPartnerCashUpdated : Signal;

	static public function PrintChatText(text:String) : Void;

	static public function ParseHTMLColor(name:String) : Number;

	static public function ParseHTMLFont(name:String) : Object;

	static public function PlaySound(soundName:String) : Void;

	static public function PlayFeedbackSound(feedbackSoundName:String) : Void;

	static public function PlayFeedbackSoundEnum(feedbackSoundEnum:Number) : Void;

	static public function GetGameTweak(name:String) : Number;

	static public function GetGameTime() : Number;

	static public function GetNormalTime() : Number;

	static public function GetTimeOfDay() : Number;

	static public function GetServerSyncedTime() : Number;

	static public function GetServerUpTime() : Number;

	static public function StartTrade(tradeCharacter:ID32);

	static public function AcceptTrade();

	static public function NoLongerAcceptTrade();

	static public function AbortTrade();

	static public function AttenuateGameSounds(attenuate:Boolean) : Void;

	static public function SetTradeCash(cash:Number);

	static public function InspectionWindowStatusChanged(open:Boolean) : Void;

}