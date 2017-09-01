import flash.geom.Point;
import com.Utils.Rect;
import flash.geom.Rectangle;
import mx.utils.Delegate;
import com.Utils.Signal;
import com.Utils.ID32;
import gfx.motion.Tween;
import mx.transitions.easing.*;
import com.Components.ItemSlot;
import flash.filters.GlowFilter;
intrinsic class GUI.Inventory.IconBox
{
	static public var EXPAND_ITEM_BUTTON_SPACE : Number;
	static private var BOTTOM_BAR_HEIGHT : Number;
	static private var VISIBILITY_OFF : Number;
	static private var VISIBILITY_ON : Number;
	static private var VISIBILITY_PARTIAL : Number;
	static private var WINDOW_CORNER_RADIUS : Number;
	private var m_Visible : Boolean;
	private var m_WindowMC : MovieClip;
	private var m_Grid : MovieClip;
	private var m_BottomBar : MovieClip;
	private var m_BoxID : Number;
	private var m_IconSize : Number;
	private var m_IconPaddingX : Number;
	private var m_IconPaddingY : Number;
	private var m_BoxPadding : Rect;
	private var m_BottomBarHeight : Number;
	private var m_TopBarHeight : Number;
	private var m_CanRename : Boolean;
	private var m_BoxHeight : Object;
	private var m_BoxWidth : Object;
	private var m_NumRows : Object;
	private var m_NumColumns : Object;
	private var m_NumItems : Object;
	private var m_MinNumRows : Number;
	private var m_MinNumColumns : Number;
	private var m_Name : String;
	private var m_IsPinned : Boolean;
	private var m_IsGlowing : Boolean;
	private var m_HasGrid : Boolean;
	private var m_HasBottomBar : Boolean;
	private var m_WindowHasFullVisibility : Boolean;
	private var m_PinnedBackgroundOpacity : Number;
	private var m_LockPositionWhenPinned : Boolean;
	private var m_ItemSlots : Array;
	private var m_InventoryId : ID32;
	public var SignalStartDragging : Signal;
	public var SignalDeleteItem : Signal;
	public var SignalUseItem : Signal;
	public var SignalStartDragItem : Signal;
	public var SignalStartSplitItem : Signal;
	public var SignalMouseDownItem : Signal;
	public var SignalMouseUpItem : Signal;
	public var SignalMouseUpEmptySlot : Signal;
	public var SignalMouseDownEmptySlot : Signal;

	public function IconBox(boxID:Number, inventoryId:ID32, windowMC:MovieClip, numRows:Number, numColumns:Number);

	private function SlotBackgroundPressed(buttonIdx:Number);

	private function SlotBackgroundReleased(buttonIdx:Number);

	private function SlotMouseDownEmptySlot(gridPos:Point, buttonIdx:Number);

	private function SlotMouseUpEmptySlot(gridPos:Point, buttonIdx:Number);

	private function SlotStartDrag();

	private function SlotTopPressed();

	private function SlotMouseOverButton();

	private function SlotMouseOutButton();

	public function CloseAllTooltips();

	private function SlotPinPress();

	public function GetWindowMC() : MovieClip;

	public function GetNumItems() : Number;

	public function GetName() : String;

	public function SetName(name:String);

	public function SetNumTotalItems(numItems:Number, numMaxItems:Number);

	public function IsPinned() : Boolean;

	public function SetPinned(pin:Boolean);

	public function IsGlowing() : Boolean;

	public function SetGlowing(glow:Boolean);

	public function IsVisible() : Boolean;

	public function GetNumColumns() : Number;

	public function GetNumRows() : Number;

	public function GetNumSlots();

	private function CalculateSlotPosX(val:Number);

	private function CalculateSlotPosY(val:Number);

	public function RelayoutSlots();

	public function GetGridPositionAt(x:Number, y:Number) : Point;

	public function GetFirstFreeGridPosition();

	public function GetItemAtGridPosition(gridPos:Point);

	public function IsValidGridPosition(gridPos:Point) : Boolean;

	public function GetItemAt(dstX:Number, dstY:Number) : ItemSlot;

	public function HitTest(x:Number, y:Number);

	public function HitTestTopBar(x:Number, y:Number);

	public function GetBoxID() : Number;

	public function GetWidth();

	public function GetHeight();

	public function SetPos(x:Number, y:Number);

	public function GetPos() : Point;

	public function GetHorizontalSizeOfSlots(numSlots:Number);

	public function GetVerticalSizeOfSlots(numSlots:Number);

	public function GetNumHorizontalSlotsFromSize(width:Number);

	public function GetNumVerticalSlotsFromSize(width:Number);

	private function UpdateBoxContents(width:Number, height:Number);

	private function UpdatePinnedBoxContents(width:Number, height:Number) : Void;

	private function UpdateDropShadow(displayingAsPinned:Boolean) : Void;

	public function SetOnScreenVisibility(stateVisible:Boolean);

	private function UpdateVisibility();

	private function SetWindowHasFullVisibility(fullVisibility:Boolean);

	public function RemoveItem(itemID:Number) : Boolean;

	public function ChangeItem(itemID:Number, itemData:Object);

	public function AddShortcutLabelAndAnimation(inventoryPosition:Number, label:String) : Void;

	public function RemoveShortcutLabelAndAnimation(inventoryPosition:Number) : Void;

	public function GetMovieClipFromInventoryPosition(inventoryPosition:Number) : MovieClip;

	public function GetGridPositionFromSlotID(itemID:Number) : Point;

	public function AnimateShortcut(inventoryPosition:Number) : Void;

	private function ResizeBox(isDefaultWindow:Boolean);

	public function ResizeBoxTo(numRows:Number, numColumns:Number, isDefaultWindow:Boolean);

	public function UpdateItemSlotsArray(numRows:Number, numColumns:Number);

	public function GetHighestSlotUsed() : Point;

	public function CreateEmptySlot(gridPosition:Point, slotID:Number);

	public function DrawGrid(isDefaultWindow:Boolean) : Void;

	public function RemoveGrid();

	public function HasGrid() : Boolean;

	public function RedrawGrid(isDefaultWindow:Boolean);

	public function CanRename(value:Boolean) : Void;

	private function SlotRenameBox(buttonIndex:Number, clickCount:Number);

	public function StartWritingName();

	public function SlotNameEnterFrame();

	public function SlotMouseDownEndWritingName();

	public function EndWritingName();

	public function onKeyDown();

	public function GetInventoryID() : ID32;

	public function GetIconSize() : Number;

	public function GetIconPaddingX() : Number;

	public function GetIconPadingY() : Number;

	public function GetBoxPadding() : Rect;

	public function GetTopBarHeight() : Number;

	public function GetBottomBarHeight() : Number;

	public function SetHasBottomBar(value:Boolean) : Void;

	public function GetHasBottomBar() : Boolean;

	public function SetPinnedBackgroundOpacity(value:Number) : Void;

	public function SetLockPositionWhenPinned(value:Boolean) : Void;

}