import gfx.core.UIComponent;
import gfx.controls.Button;
import com.Utils.Signal;
import com.Utils.Colors;
import com.Utils.LDBFormat;
import com.Utils.Text;
import com.GameInterface.Lore;
import com.GameInterface.LoreNode;
import com.GameInterface.DistributedValue;
import com.GameInterface.Utils;
import com.GameInterface.ShopInterface;
import com.GameInterface.Game.Character;
import com.GameInterface.Game.BuffData;
import mx.utils.Delegate;
intrinsic class GUI.RegionTeleport.PlayfieldEntry extends UIComponent
{
	private var m_Background : MovieClip;
	private var m_Frame : MovieClip;
	private var m_HitArea : MovieClip;
	private var m_Name : TextField;
	private var m_TriangleButton : MovieClip;
	private var m_CooldownTimer : MovieClip;
	private var m_Price : MovieClip;
	private var m_Disabled : Boolean;
	private var m_IsExpanded : Boolean;
	private var m_IsFocused : Boolean;
	private var m_Time : Number;
	private var m_TimerID : Number;
	private var m_LoreNode : Object;
	private var m_Id : Object;
	private var m_Image : Object;
	private var m_SubEntries : Array;
	private var m_Depth : Number;
	public var SignalEntrySizeChanged : Signal;
	public var SignalEntryFocused : Signal;
	public var SignalEntryEnabled : Signal;
	public var SignalEntryActivated : Signal;
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

	private function onUnload() : Void;

	public function SetData(loreNode:LoreNode, depth:Number) : Void;

	private function SetPrice() : Void;

	private function SetLockoutTime() : Void;

	private function CreateSubEntries() : Void;

	private function SlotSubEntryEnabled() : Void;

	private function SlotSubEntryActivated(nodeId:Number) : Void;

	private function SlotTagAdded(tagId:Number) : Void;

	private function SlotBuffRemoved(buffId:Number) : Void;

	public function LayoutSubEntries() : Void;

	public function SetDisabled(disable:Boolean) : Void;

	public function GetFullHeight() : Number;

	public function IsLeaf() : Boolean;

	private function HitAreaPressHandler(buttonIdx:Number, clickCount:Number) : Void;

	public function SetFocusById(id:Number) : Void;

	public function SetFocused(focus:Boolean) : Void;

	private function SlotSubEntryFocused(loreNode:LoreNode) : Void;

	public function Expand() : Void;

	public function Contract() : Void;

	private function SlotSubEntrySizeChanged() : Void;

	private function HitAreaRollOverHandler() : Void;

	private function HitAreaRollOutHandler() : Void;

	private function CalculateTimeString(totalSeconds) : String;

	private function UpdateTimer() : Void;

	private function ClearTimer() : Void;

}