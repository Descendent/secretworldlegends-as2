import gfx.core.UIComponent;
import gfx.controls.CheckBox;
import com.Utils.Signal;
import com.Utils.Colors;
import com.Utils.LDBFormat;
import mx.utils.Delegate;
import com.GameInterface.Tooltip.TooltipManager;
import com.GameInterface.Tooltip.TooltipData;
import com.GameInterface.Tooltip.TooltipInterface;
import com.GameInterface.DistributedValue;
import com.GameInterface.GroupFinder;
import com.GameInterface.LookingForGroup;
import com.GameInterface.Game.Character;
import com.GameInterface.PvPMinigame.PvPMinigame;
intrinsic class GUI.GroupFinder.PlayfieldEntry extends UIComponent
{
	private var m_Background : MovieClip;
	private var m_Frame : MovieClip;
	private var m_HitArea : MovieClip;
	private var m_Name : TextField;
	private var m_TriangleButton : MovieClip;
	private var m_BonusSymbol : MovieClip;
	private var m_SelectCheckbox : CheckBox;
	private var m_Disabled : Boolean;
	private var m_IsExpanded : Boolean;
	private var m_IsFocused : Boolean;
	private var m_PlaySounds : Boolean;
	private var m_PrivateTeam : Boolean;
	private var m_Id : Object;
	private var m_Difficulty : Object;
	private var m_Image : Object;
	private var m_SubEntries : Array;
	private var m_Depth : Number;
	private var m_Random : Boolean;
	private var m_BonusReward : String;
	private var m_NeededRole : Number;
	private var m_TooltipText : String;
	private var m_Tooltip : TooltipInterface;
	private var m_TooltipTimeout : Number;
	public var SignalEntrySizeChanged : Signal;
	public var SignalEntryToggled : Signal;
	public var SignalEntryFocused : Signal;
	static private var CONTRACT_HEIGHT : Object;
	static private var ENTRY_PADDING : Number;
	static private var ENTRY_INDENT : Number;
	static private var DISABLED_ALPHA : Object;
	static private var ENABLED_ALPHA : Object;
	static private var TOOLTIP_WIDTH : Object;
	static private var TINT_INTENSITY : Object;
	static private var HEADER_ENTRY : Object;

	public function PlayfieldEntry();

	private function configUI() : Void;

	public function SetData(playfieldName:String, queueId:Number, playfieldDifficulty:Number, image:Number, subEntries:Array, depth:Number, isRandom:Boolean) : Void;

	private function SlotNeededRolesUpdated(neededRoles:Array);

	public function UpdateNeededRole(queueId:Number, neededRole:Number);

	public function SetPrivateTeam(privateTeam:Boolean) : Void;

	private function CreateSubEntries() : Void;

	public function LayoutSubEntries() : Void;

	public function SetDisabled(disable:Boolean, disabledTooltip:String, clearSelection:Boolean) : Void;

	public function GetFullHeight() : Number;

	public function IsLeaf() : Boolean;

	public function FillSelectedEntriesArray(selectedEntries:Array) : Void;

	private function SelectEntries(entriesToSelect:Array) : Void;

	public function SetSelected(select:Boolean, forceSelected:Boolean) : Void;

	public function GetSelected() : Boolean;

	private function CheckboxClickHandler() : Void;

	private function SlotSubEntryToggled(select:Boolean);

	private function AllSubEntriesChecked() : Boolean;

	private function NoSubEntriesChecked() : Boolean;

	private function SlotClientJoinedGroupFinder() : Void;

	private function HitAreaReleaseHandler() : Void;

	public function SetFocusById(id:Number) : Void;

	public function SetFocused(focus:Boolean) : Void;

	private function SlotSubEntryFocused(id:Number, image:Number, isRandom:Boolean, neededRole:Number) : Void;

	public function Expand() : Void;

	public function Contract() : Void;

	private function SlotSubEntrySizeChanged() : Void;

	private function HitAreaPressHandler() : Void;

	private function HitAreaRollOverHandler() : Void;

	private function HitAreaRollOutHandler() : Void;

	private function StartTooltipTimeout();

	private function StopTooltipTimout();

	private function OpenTooltip();

	public function CloseTooltip();

}