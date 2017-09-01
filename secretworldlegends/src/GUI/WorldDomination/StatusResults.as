import com.GameInterface.Game.Character;
import com.GameInterface.ProjectUtils;
import com.GameInterface.PvPMinigame.PvPMinigame;
import com.GameInterface.UtilsBase;
import GUI.WorldDomination.PvPLatestResultsLeader;
import GUI.WorldDomination.PvPLatestResultsScoreBoard;
import com.Utils.LDBFormat;
import com.Utils.Signal;
import mx.utils.Delegate;
intrinsic class GUI.WorldDomination.StatusResults extends MovieClip
{
	static public var STATUS_STATE : Number;
	static public var RESULTS_STATE : Number;
	static public var STATUS : String;
	static public var RESULTS : String;
	static private var EL_DORADO : String;
	static private var STONEHENGE : String;
	static private var FUSANG_PROJECTS : String;
	static private var UPDATE_SCOREBOARD_SOUND_EFFECT : String;
	static private var SCOREBOARD_UPDATE_TIME : Number;
	static private var MAX_WIDTH : Number;
	static private var MIN_BAR_WIDTH : Number;
	static private var BARS_GAP : Number;
	static private var DISABLED_ALPHA : Number;
	static private var CURRENT_HOUR : String;
	static private var PREVIOUS_HOUR : String;
	static private var CURRENT_STATUS : String;
	static private var CURRENT_RESULT : String;
	static private var RESETS_IN : String;
	static private var UPDATES_IN : String;
	static private var MINUTES : String;
	static private var MINUTE : String;
	static private var SECONDS : String;
	static private var SECOND : String;
	static private var FACILITY_1 : String;
	static private var FACILITY_2 : String;
	static private var FACILITY_3 : String;
	static private var FACILITY_4 : String;
	static private var TOWER_1 : String;
	static private var TOWER_2 : String;
	static private var TOWER_3 : String;
	static private var TOWER_4 : String;
	static private var TOWER_5 : String;
	static private var TOWER_6 : String;
	static private var TOWER_7 : String;
	static private var TOWER_8 : String;
	static private var TOWER_9 : String;
	static private var TOWER_10 : String;
	static private var TOWER_11 : String;
	static private var TOWER_12 : String;
	static private var BUFF_SUPPORT_DRAGON : String;
	static private var BUFF_SUPPORT_TEMPLARS : String;
	static private var BUFF_SUPPORT_ILLUMINATI : String;
	static private var FACILITY_1_RDB_ID : Number;
	static private var FACILITY_2_RDB_ID : Number;
	static private var FACILITY_3_RDB_ID : Number;
	static private var FACILITY_4_RDB_ID : Number;
	static private var COUNCIL_SUPPORT_DRAGON_RDB_ID : Number;
	static private var COUNCIL_SUPPORT_TEMPLARS_RDB_ID : Number;
	static private var COUNCIL_SUPPORT_ILLUMINATI_RDB_ID : Number;
	static private var CUSTODIAN_BUFF_DRAGON_RDB_ID : Number;
	static private var CUSTODIAN_BUFF_TEMPLARS_RDB_ID : Number;
	static private var CUSTODIAN_BUFF_ILLUMINATI_RDB_ID : Number;
	static private var DRAGON_WINS_EL_DORADO : String;
	static private var DRAGON_WINS_EL_DORADO_LAST : String;
	static private var TEMPLARS_WINS_EL_DORADO : String;
	static private var TEMPLARS_WINS_EL_DORADO_LAST : String;
	static private var ILLUMINATI_WINS_EL_DORADO : String;
	static private var ILLUMINATI_WINS_EL_DORADO_LAST : String;
	static private var DRAGON_WINS_STONEHENGE : String;
	static private var DRAGON_WINS_STONEHENGE_LAST : String;
	static private var TEMPLARS_WINS_STONEHENGE : String;
	static private var TEMPLARS_WINS_STONEHENGE_LAST : String;
	static private var ILLUMINATI_WINS_STONEHENGE : String;
	static private var ILLUMINATI_WINS_STONEHENGE_LAST : String;
	static private var FVF_SCORE_UPDATE_TIME : String;
	static private var FVF_SCORE_DRAGON : String;
	static private var FVF_SCORE_TEMPLAR : String;
	static private var FVF_SCORE_ILLUMANITI : String;
	static private var FVF_INTERVAL_TIME : String;
	static private var FVF_INTERVAL_REWARD_FACILITY_1 : String;
	static private var FVF_INTERVAL_REWARD_FACILITY_4 : String;
	static private var FVF_TICK_REWARD_SMALL_ANIMA_WELL : String;
	static private var FVF_TICK_REWARD_PASSIVE : String;
	public var SignalStateChanged : Signal;
	private var m_ButtonBar : MovieClip;
	private var m_ButtonBarLine : MovieClip;
	private var m_TabButtonArray : Array;
	private var m_StatusTitle_1 : TextField;
	private var m_StatusSubtitle_1 : TextField;
	private var m_StatusTitle_2 : TextField;
	private var m_StatusSubtitle_2 : TextField;
	private var m_Character : Character;
	private var m_DimensionPvP : Number;
	private var m_DimensionFvF : Number;
	private var m_TemplarsBar : MovieClip;
	private var m_TemplarsBarIcon : MovieClip;
	private var m_IlluminatiBar : MovieClip;
	private var m_IlluminatiBarIcon : MovieClip;
	private var m_DragonBar : MovieClip;
	private var m_DragonBarIcon : MovieClip;
	private var m_FVFTotalScore : Number;
	private var m_StatusScoreBoardLeader : PvPLatestResultsLeader;
	private var m_FirstPlaceStatusScoreBoard : PvPLatestResultsScoreBoard;
	private var m_SecondPlaceStatusScoreBoard : PvPLatestResultsScoreBoard;
	private var m_ThirdPlaceStatusScoreBoard : PvPLatestResultsScoreBoard;
	private var m_TokenDistribution : MovieClip;
	private var m_FirstPlaceResultsScoreBoard : MovieClip;
	private var m_SecondPlaceResultsScoreBoard : MovieClip;
	private var m_ThirdPlaceResultsScoreBoard : MovieClip;
	private var m_IntervalID_FvF : Number;
	private var m_IntervalUpdateCheck : Number;
	private var m_StartTime_FvF : Number;
	private var m_Time_FvF : Number;
	private var m_State : Number;
	private var m_CurrentPlayfield : String;
	private var m_IsScoreBoardUpdateNeeded : Boolean;
	private var m_IsStatusBarsUpdatedNeeded : Boolean;

	public function get state() : Number;
	public function set state(state:Number) : Void;

	public function get playfield() : String;
	public function set playfield(playfieldName:String) : Void;


	public function StatusResults();

	private function Init() : Void;

	private function onLoad() : Void;

	private function onUnload() : Void;

	private function CheckDataUpdate() : Void;

	private function RequestTimeToStatusUpdate() : Void;

	private function ResetCurrentResultsTime() : Void;

	private function UpdateCurrentResultsTimer() : Void;

	private function UpdateCurrentResultsScoreBoard() : Void;

	private function SlotUpdateHourSubtitles(timeLeft:Number) : Void;

	private function SlotUpdateStatus(statName:String, value:Number, type1:Number, type2:Number, dimID:Number) : Void;

	private function UpdateStatusBars() : Void;

	private function UpdateStatusScoreBoard() : Void;

	private function GetCurrentFactionBuffs(faction:Number) : Array;

	private function SelectedTabBarEventHandler(event:Object) : Void;

	private function SetFvFVisibility(visible:Boolean) : Void;

	private function SetStatusVisibility(visible:Boolean) : Void;

	private function SetResultsVisibility(visible:Boolean) : Void;

}