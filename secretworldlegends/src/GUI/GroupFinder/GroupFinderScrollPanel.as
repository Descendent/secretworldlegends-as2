import gfx.core.UIComponent;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import mx.utils.Delegate;
import GUI.GroupFinder.PlayfieldEntry;
import com.GameInterface.Game.TeamInterface;
import com.Utils.LDBFormat;
import com.Utils.Signal;
intrinsic class GUI.GroupFinder.GroupFinderScrollPanel extends UIComponent
{
	private var m_Background : MovieClip;
	private var m_ListContent : MovieClip;
	private var m_Mask : MovieClip;
	private var m_ScrollBar : MovieClip;
	private var m_PlayfieldEntries : Array;
	private var m_AllDisabled : Boolean;
	public var SignalEntryToggled : Signal;
	public var SignalEntryFocused : Signal;
	static private var TDB_RANDOM_DUNGEONS : Object;
	static private var TDB_RANDOM_NIGHTMARE_DUNGEON_MAIN : Object;
	static private var TDB_RANDOM_NIGHTMARE_DUNGEON_AEGIS : Object;
	static private var TDB_RANDOM_ELITE_DUNGEON : Object;
	static private var TDB_RANDOM_ELITE_DUNGEON_AEGIS : Object;
	static private var TDB_DUNGEONS : Object;
	static private var TDB_RAIDS : Object;
	static private var TDB_SCENARIOS : Object;
	static private var TDB_PVP : Object;
	static private var TDB_NORMAL : Object;
	static private var TDB_ELITE : Object;
	static private var TDB_ELITE_HEADER : Object;
	static private var TDB_SOLO : Object;
	static private var TDB_DUO : Object;
	static private var TDB_NIGHTMARE : Object;
	static private var TDB_ERROR_RANDOM_SELECTED : Object;
	static private var TDB_ERROR_IN_RAID : Object;
	static private var ENTRY_PADDING : Number;
	static private var SCROLL_SPEED : Number;
	static private var SCROLL_PADDING : Number;
	static private var DUNGEONS : Number;
	static private var SCENARIOS : Number;
	static private var PVP : Number;
	static private var HEADER_ENTRY : Object;
	static private var DUNGEON_NM_MAIN_IMAGE : Number;
	static private var DUNGEON_NM_AEGIS_IMAGE : Number;
	static private var DUNGEON_ELITE_IMAGE : Number;
	static private var DUNGEON_ELITE_AEGIS_IMAGE : Number;
	static private var SCENARIOS_IMAGE : Number;

	public function GroupFinderScrollPanel();

	public function SetData(dungeonPlayfields:Array, raidPlayfields:Array, scenarioPlayfields:Array, pvpPlayfields:Array) : Void;

	private function CreateContent(dungeonPlayfields:Array, raidPlayfields:Array, scenarioPlayfields:Array, pvpPlayfields:Array) : Void;

	private function RemoveContent() : Void;

	private function LayoutEntries() : Void;

	private function ContentSizeUpdated() : Void;

	private function CreateScrollBar() : Void;

	private function OnScrollbarUpdate(event:Object) : Void;

	private function onMouseWheel(delta:Number) : Void;

	private function UpdateScrollbarVisibility() : Void;

	private function GetEliteDungeons();

	private function GetSoloScenarios();

	private function GetDuoScenarios();

	private function GetPlayfieldsForDifficulty(playfields:Array, difficulty:Number) : Array;

	private function ParsePvPPlayfields(playfields:Array) : Array;

	private function GetRandomDungeonsArray() : Array;

	private function SlotRandomEntryToggled(select:Boolean) : Void;

	private function SlotEntryToggled(select:Boolean) : Void;

	private function SlotEntryFocused(id:Number, image:Number, isRandom:Boolean) : Void;

	public function GetSelectedEntries() : Array;

	public function SetPrivateTeam(privateTeam:Boolean) : Void;

	public function DisableAllEntries(disable:Boolean, error:String) : Void;

	public function DisableNonRaidContent(disable:Boolean) : Void;

}