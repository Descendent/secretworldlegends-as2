import com.Utils.LDBFormat;
import com.GameInterface.ProjectUtils;
import com.GameInterface.PvPScoreboard;
import com.GameInterface.PvPScoreboardPlayerData;
import GUI.PvPScoreboard.SortButton;
import com.GameInterface.Game.Character;
intrinsic class GUI.PvPScoreboard.Table extends MovieClip
{
	static public var SORT_TYPE_FACTION : String;
	static public var SORT_TYPE_ALL : String;
	static private var EL_DORADO_ID : Number;
	static private var STONEHENGE_ID : Number;
	static private var SHAMBALA_ID : Number;
	static private var SCROLL_WHEEL_SPEED : Number;
	static private var RANK : String;
	static private var PLAYER_NAME : String;
	static private var ROLE : String;
	static private var BATTLE_RANK : String;
	static private var DAMAGE : String;
	static private var HEALING : String;
	static private var CROWD_CONTROL : String;
	static private var DAMAGE_TAKEN : String;
	static private var KILLS : String;
	static private var DEATH : String;
	static private var RELIC : String;
	static private var DOMINATION : String;
	static private var SURVIVAL : String;
	static private var POINTS : String;
	static private var RANK_OBJECT_NAME : String;
	static private var PLAYER_NAME_OBJECT_NAME : String;
	static private var ROLE_OBJECT_NAME : String;
	static private var BATTLE_RANK_OBJECT_NAME : String;
	static private var DAMAGE_OBJECT_NAME : String;
	static private var HEALING_OBJECT_NAME : String;
	static private var CROWD_CONTROL_OBJECT_NAME : String;
	static private var DAMAGE_TAKEN_OBJECT_NAME : String;
	static private var KILLS_OBJECT_NAME : String;
	static private var DEATH_OBJECT_NAME : String;
	static private var POINTS_OBJECT_NAME : String;
	static private var DYNAMIC_OBJECT_NAME : String;
	static private var FACTION_HEADER : String;
	public var m_Character : Character;
	private var m_CategoryHeader : MovieClip;
	private var m_SortButtonArray : Array;
	private var m_SelectedSortButton : SortButton;
	private var m_ScrollContainer : MovieClip;
	private var m_RowsContainer : MovieClip;
	private var m_ScrollBar : MovieClip;
	private var m_ScrollBarPosition : Number;
	private var m_PreviousRowsContainerY : Number;
	private var m_ItemsArray : Array;
	private var m_RowsArray : Array;
	private var m_SortType : String;
	private var m_SortTarget : String;
	private var m_SortDirection : String;
	private var m_FactionPlacement : Array;

	public function TableCategoryHeader();

	public function SetTable(factionPlacement:Array, clientCharacter:Character) : Void;

	private function InitTable() : Void;

	private function GetCharactersBestCategory() : String;

	private function CreateTable(sortType:String, sortTarget:String, sortDirection:String) : Void;

	private function SetCategoryHeading(target:MovieClip, label:String, name:String) : Void;

	public function SlotSortRows(sortButton:SortButton, sortType:String) : Void;

	private function CreateRowsContainer() : Void;

	private function CreateItems() : Void;

	private function SortItems(sortTarget:String, sortDirection:String) : Void;

	private function CreateRows(sortTarget:String) : Void;

	private function UpdateScrollBar() : Void;

	private function ActivateInitialSortButtonDisplay() : Void;

	public function onMouseWheel(delta:Number) : Void;

	private function OnScrollbarUpdate(event:Object) : Void;

}