import com.GameInterface.PvPMinigame.PvPMinigame;
import com.GameInterface.Game.Character;
import com.GameInterface.Game.TeamInterface;
import com.GameInterface.Game.Team;
import com.GameInterface.ProjectUtils;
import com.Utils.LDBFormat;
import gfx.controls.DropdownMenu;
import GUI.WorldDomination.UniformTypes;
import flash.geom.Rectangle;
import mx.utils.Delegate;
intrinsic class GUI.WorldDomination.SidePanel extends MovieClip
{
	static public var CAPTURE_THE_RELICS : String;
	static public var PRERSISTENT_WARZONE : String;
	static private var SIDE_PANEL_LEFT_MARGIN : Number;
	static private var SIDE_PANEL_HEIGHT_PERCENTAGE : Number;
	static private var FVF_RADIO_GROUP : String;
	static private var JOIN_RADIO_GROUP : String;
	static private var EL_DORADO_ID : Number;
	static private var STONEHENGE_ID : Number;
	static private var FUSANG_PROJECTS_ID : Number;
	static private var SHAMBALA_ID : Object;
	static private var UNCONTROLLED : String;
	static private var DRAGON_FACTION_NAME : String;
	static private var ILLUMINATI_FACTION_NAME : String;
	static private var TEMPLARS_FACTION_NAME : String;
	static private var SIGN_IN : String;
	static private var ENTER_WARZONE : String;
	static private var LEAVE_QUEUE : String;
	static private var LEAVE_ZONE : String;
	static private var SHAMBALA_STATUS_HEADER : String;
	static private var SHAMBALA_STATUS_TEXT : String;
	static private var SIGN_IN_SOUND_EFFECT : String;
	public var m_SelectedIndex : Number;
	public var m_MiniMapSelectedState : Number;
	public var m_StatusResultsSelectedState : Number;
	public var m_UniformTypesSelectionArray : Array;
	public var m_JoinTypeSelection : Number;
	private var m_Content : MovieClip;
	private var m_DropdownMenu : MovieClip;
	private var m_PlayfieldSubtitle : MovieClip;
	private var m_MiniMap : MovieClip;
	private var m_StatusResults : MovieClip;
	private var m_ShambalaStatus : MovieClip;
	private var m_UniformTypes : MovieClip;
	private var m_JoinType : MovieClip;
	private var m_JoinLeaveButton : MovieClip;
	private var m_Character : Character;
	private var m_QueuedMaps : Array;
	private var m_SelectedID : Number;

	public function SidePanel();

	private function Init() : Void;

	private function onLoad() : Void;

	private function SlotMiniMapStateChanged(selectedState:Number) : Void;

	private function SlotStatusResultsStateChanged(selectedState:Number) : Void;

	private function SlotUniformTypesSelectionChanged(selectionArray:Array) : Void;

	private function SlotJoinTypeSelectionChanged(selection:Number) : Void;

	private function Layout() : Void;

	private function AttachSeparator(y:Number) : Void;

	public function Resize() : Void;

	private function ConfigureVisibility(event:Object) : Void;

	private function ConfigurePanel() : Void;

	private function IsInQueue(mapId:Number) : Boolean;

	private function UpdateSubtitle(selectedIndex:Number) : Void;

	private function SlotYouAreInMatchMaking(mapID:Number, joinAsGroup:Boolean) : Void;

	private function SlotNoLongerInMatchMaking(playfieldId:Number) : Void;

	private function SlotClientJoinedTeam(team:Team) : Void;

	private function SlotClientLeftTeam() : Void;

	private function MarkerSelected(name:String) : Void;

	private function JoinLeaveButtonClickHandler() : Void;

	private function RemoveFocus() : Void;

}