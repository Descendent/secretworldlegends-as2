import com.Utils.Signal;
intrinsic class com.GameInterface.PvPScoreboard
{
	static public var m_Players : Array;
	static public var m_PlayfieldID : Number;
	static public var m_MatchResult : Number;
	static public var m_WinnerSide : Number;
	static public var SignalScoreboardUpdated : Signal;

	static public function Close() : Void;

}