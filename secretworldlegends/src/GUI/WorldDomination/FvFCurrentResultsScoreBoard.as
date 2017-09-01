import com.GameInterface.PvPMinigame.PvPMinigame;
import com.Utils.Format;
import com.Utils.Colors;
intrinsic class GUI.WorldDomination.FvFCurrentResultsScoreBoard extends MovieClip
{
	static private var DRAGON_POINTS_WORLDSTAT : String;
	static private var TEMPLAR_POINTS_WORLDSTAT : String;
	static private var ILLUMINATI_POINTS_WORLDSTAT : String;
	static private var OUTER_FACILITY_RDB_ID : Number;
	static private var INNER_FACILITY_RDB_ID : Number;
	static private var TOWER_RDB_ID : Number;
	static private var MINOR_ANIMA_FRAGMENT_RDB_ID : Number;
	private var m_IlluminatiIcon : MovieClip;
	private var m_DragonIcon : MovieClip;
	private var m_TemplarsIcon : MovieClip;
	private var m_Faction : Number;
	private var m_InnerTextField : TextField;
	private var m_OuterTextField : TextField;
	private var m_TowerTextField : TextField;
	private var m_DimensionID : Number;
	private var m_OutterMarker : MovieClip;
	private var m_InnerMarker : MovieClip;
	private var m_TowerMarker : MovieClip;

	public function FvFCurrentResultsScoreBoard();

	private function Init() : Void;

	private function HideIcons() : Void;

	public function SetFaction(faction:Number, facilities:Array) : Void;

	private function ClearMarkerColors() : Void;

}