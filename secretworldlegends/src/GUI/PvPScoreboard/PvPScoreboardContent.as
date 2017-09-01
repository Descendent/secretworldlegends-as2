import com.Components.WindowComponentContent;
import com.GameInterface.PvPMinigame.PvPMinigame;
import com.GameInterface.Game.Character;
import com.GameInterface.PvPScoreboard;
import com.GameInterface.ProjectUtils;
import com.GameInterface.ScryWidgets;
import com.GameInterface.GUIModuleIF;
import flash.geom.Point;
intrinsic class GUI.PvPScoreboard.PvPScoreboardContent extends WindowComponentContent
{
	static public var RDB_DRAGON_ICON : Number;
	static public var RDB_TEMPLARS_ICON : Number;
	static public var RDB_ILLUMINATI_ICON : Number;
	static public var RDB_MOON_ICON : Number;
	static public var RDB_SUN_ICON : Number;
	static private var EL_DORADO_ID : Number;
	static private var STONEHENGE_ID : Number;
	static private var SHAMBALA_ID : Number;
	private var m_Character : Character;
	private var m_ContentCanvas : MovieClip;
	private var m_Header : MovieClip;
	private var m_Table : MovieClip;
	private var m_Footer : MovieClip;
	private var m_FactionPlacement : Array;
	private var m_FactionScores : Array;

	public function PvPScoreboardContent();

	private function onLoad() : Void;

	private function RefreshData() : Void;

	public function SlotScryMessage(messageArray:Array) : Void;

	private function GetFactionFromColor(colorEnum:Number) : Number;

	private function SlotSortTypeSelected(sortType:String) : Void;

}