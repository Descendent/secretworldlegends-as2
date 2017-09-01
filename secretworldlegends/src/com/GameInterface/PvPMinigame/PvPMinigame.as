import com.Utils.Signal;
import com.Utils.ID32;
intrinsic class com.GameInterface.PvPMinigame.PvPMinigame
{
	static private var s_Instance : PvPMinigame;
	static public var m_TimeToJoinGame : Number;
	static public var m_SelectedRole : Number;
	static public var m_GamePlayFieldName : String;
	static public var SignalWorldStatChanged : com.Utils.Signal;
	static public var SignalPlayerChangedSide : com.Utils.Signal;
	static public var SignalPvPMinigameScoreChanged : com.Utils.Signal;
	static public var SignalPvPMatchMakingMatchRemoved : com.Utils.Signal;
	static public var SignalPvPMatchMakingMatchStarted : com.Utils.Signal;
	static public var SignalPvPMatchMakingMatchEnded : com.Utils.Signal;
	static public var SignalMinigameStartsInXSeconds : com.Utils.Signal;
	static public var SignalYouAreInMatchMaking : com.Utils.Signal;
	static public var SignalMatchWantsToStart : com.Utils.Signal;
	static public var SignalNoLongerInMatchMaking : com.Utils.Signal;
	static public var SignalStatusUpdateTime : com.Utils.Signal;

	public function PvPMinigame();

	static public function GetInstance();

	static public function GetMatchType() : Number;

	static public function GetSideScore(side:Number, scoreID:Number) : Number;

	static public function GetTotalCharacterScore(side:Number, scoreID:Number) : Number;

	static public function InMatchPlayfield() : Boolean;

	static public function InPvPPlayfield() : Boolean;

	static public function GetMinigameStatus() : Number;

	static public function GetWinningSide() : Number;

	static public function GetCaptureZoneName(id:Number) : String;

	static public function GetTimeLeft() : Number;

	static public function GetToGameTimeLeft() : Number;

	static public function GetScoreLimit() : Number;

	static public function PlantCTFFlags() : Void;

	static public function GetLastUpdateTimestamp() : Number;

	static public function SignUpForMinigame(playfieldId:Number, selectedClasses:Number, bringTeam:Boolean, doTeamMatch:Boolean) : Void;

	static public function CanSignUpForMinigame(playfieldId:Number) : Boolean;

	static public function RemoveFromMatchMaking(playfieldId:Number) : Void;

	static public function RequestIsInMatchMaking() : Void;

	static public function LeaveMatch() : Void;

	static public function JoinGame(selectedRole:Number) : Void;

	static public function DeclineJoinGame() : Void;

	static public function GetPlayfieldName(playfieldId:Number) : String;

	static public function GetCountryName(countryId:Number) : String;

	static public function GetCountryId(regionId:Number) : Number;

	static public function GetCountryArray() : Array;

	static public function GetCountryPlayfieldIdArray(countryId:Number) : Array;

	static public function RequestWorldStat(statName:String, type1:Number, type2:Number, dimId:Number) : Void;

	static public function IsStatInCache(statName:String, type1:Number, type2:Number, dimId:Number) : Boolean;

	static public function GetWorldStat(statName:String, type1:Number, type2:Number, dimId:Number) : Number;

	static public function IsStatNameValid(statName:String) : Boolean;

	static public function IsStatGlobal(statName:String) : Boolean;

	static public function GetCurrentDimensionId() : Number;

	static public function RequestTimeToStatusUpdate() : Void;

}