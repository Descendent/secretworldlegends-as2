import com.Utils.LDBFormat;
import com.Utils.Signal;
import gfx.core.UIComponent;
import gfx.controls.CheckBox;
import gfx.controls.Button;
intrinsic class GUI.GroupSearch.GroupSearchFiltersWindow extends UIComponent
{
	private var m_Background : MovieClip;
	private var m_AllActivitiesCheckbox : CheckBox;
	private var m_AllDifficultiesCheckbox : CheckBox;
	private var m_SocialCheckbox : CheckBox;
	private var m_TradeCheckbox : CheckBox;
	private var m_CabalCheckbox : CheckBox;
	private var m_DungeonCheckbox : CheckBox;
	private var m_RaidCheckbox : CheckBox;
	private var m_ScenarioCheckbox : CheckBox;
	private var m_LairCheckbox : CheckBox;
	private var m_MissionCheckbox : CheckBox;
	private var m_PvPCheckbox : CheckBox;
	private var m_FiltersLabel : TextField;
	private var m_AllActivitiesLabel : TextField;
	private var m_AllDifficultiesLabel : TextField;
	private var m_SocialLabel : TextField;
	private var m_TradeLabel : TextField;
	private var m_CabalLabel : TextField;
	private var m_DungeonLabel : TextField;
	private var m_RaidLabel : TextField;
	private var m_ScenarioLabel : TextField;
	private var m_LairLabel : TextField;
	private var m_MissionLabel : TextField;
	private var m_PvPLabel : TextField;
	private var m_NormalCheckbox : CheckBox;
	private var m_EliteCheckbox : CheckBox;
	private var m_DifficultiesLabel : TextField;
	private var m_NormalLabel : TextField;
	private var m_EliteLabel : TextField;
	private var m_ApplyButton : Button;
	private var m_CancelButton : Button;
	static public var SOCIAL : Number;
	static public var TRADE : Number;
	static public var CABAL : Number;
	static public var DUNGEON : Number;
	static public var RAID : Number;
	static public var SCENARIO : Number;
	static public var LAIR : Number;
	static public var MISSION : Number;
	static public var PVP : Number;
	static public var ANY : Number;
	static public var NORMAL : Number;
	static public var ELITE : Number;
	static public var NIGHTMARE : Number;
	static public var TDB_ALL : String;
	static public var TDB_ACTIVITY : String;
	static public var TDB_SOCIAL : String;
	static public var TDB_TRADE : String;
	static public var TDB_CABAL : String;
	static public var TDB_PVP : String;
	static public var TDB_DUNGEON : String;
	static public var TDB_RAID : String;
	static public var TDB_SCENARIO : String;
	static public var TDB_LAIR : String;
	static public var TDB_MISSION : String;
	static public var TDB_DIFFICULTY : String;
	static public var TDB_ANY : String;
	static public var TDB_NORMAL : String;
	static public var TDB_ELITE : String;
	static public var TDB_NIGHTMARE : String;
	public var SignalFiltersChanged : Signal;

	public function GroupSearchFiltersWindow();

	private function configUI() : Void;

	public function ShowPrompt(selectedFilters:Array, selectedDifficulties:Array) : Void;

	private function FiltersChanged() : Void;

	private function ToggleAllActivities() : Void;

	private function ToggleAllDifficulties() : Void;

	private function ResponseButtonEventHandler(event:Object) : Void;

	private function BuildFilterArray() : Array;

	private function BuildDifficultyArray() : Array;

	private function SetFilters(selectedFilters:Array, selectedDifficulties) : Void;

}